# From Python
# It requires OpenCV installed for Python
import sys
import cv2
import os
import time
import numpy as np
import argparse
import shutil

from download_video import download
from sys import platform



def single_person_check(points):
    '''
    Check if there is a single person in the image from given keypoints

    Args:
        Person keypoints 

    Returns:
        True if single person, False otherwise
    '''
    if(points.shape[0] ==1):
        #print("single person")
        return True
    #print("more than 1 person")
    return False

def fullbody_check(points):
    '''
    Check for fullbody(face, hands, feet)

    Args:
        Person keypoints

    Returns:
        True if fullbody in image, False Otherwise
    '''
    #face: 0
    #right hand:4
    #left hand: 7
    #right foot toes:(22,23)
    #left foot toes:(19,20)
    #check boundary points
    upper_pts = [0,4,7]
    for pt in upper_pts:
        if(points[0][pt][2] == 0):
            return False
    #feet points
    if(points[0][19][2]==0 and points[0][20][2]==0):
        return False
    if(points[0][22][2]==0 and points[0][23][2]==0):
        return False
    return True

def good_image(points):
    '''
    Check if image contains single fullbody person from keypoints

    Args:
        Person Keypoints

    Returns:
        True if single fullbody person, False otherwise
    '''
    #if points is [-1000], no person in image
    if(points.ndim == 1):
        return False

    if(single_person_check(points)):
         if(fullbody_check(points)):
             return True
    return False

def empty_folder(path):
    '''
    empties contents of a given folder

    Args:
        path to folder to empty
    '''
    folder = path
    for filename in os.listdir(folder):
        file_path = os.path.join(folder, filename)
        try:
            if os.path.isfile(file_path) or os.path.islink(file_path):
                os.unlink(file_path)
            elif os.path.isdir(file_path):
                shutil.rmtree(file_path)
        except Exception as e:
            print('Failed to delete %s. Reason: %s' % (file_path, e))


###############
#BEGIN PROCESS#
###############

#parameters
video_save_path = 'videos'    #location of videos, folder will be emptied before downloading
op_save_path = 'openposeResults'    #temporary openpose results folder, folder will be emptied before saving openpose results
rcnn_img_save_path = '/home/ubuntu/Robert/fbData/allData/img3'    #folder to save final images
rcnn_mask_save_path  = '/home/ubuntu/Robert/fbData/allData/mask3'    #folder to save final masks
op_python_path = '/home/ubuntu/Robert/openpose/build/python'    #path to openpose python wrapper folder 
op_models_path = '/home/ubuntu/Robert/openpose/models'     #path to openpose models
skip_download = False
yt_links = [
    "https://www.youtube.com/watch?v=so9II7kQHiQ"
]

#download videos
if(not skip_download):
    print("----------------")
    print("Begin downloading")
    print("----------------")
    empty_folder('videos')
    download(yt_links, video_save_path)
  
try:
    sys.path.append(op_python_path)
    from openpose import pyopenpose as op

    # Custom Params (refer to include/openpose/flags.hpp for more parameters)
    params = dict()
    params["model_folder"] = op_models_path
    params["disable_blending"] = True
    params["render_pose"] = 0
    params["display"] = 0
    

    ##############################
    # Starting OpenPose filtering#
    ##############################
    
    opWrapper = op.WrapperPython()
    opWrapper.configure(params)
    opWrapper.start()
    
    empty_folder('openposeResults')
    
    #Process video
    print("----------------------")
    print("Begin Processing Video")
    print("----------------------")


    videos = os.listdir(video_save_path)
    total_frames_op = 0
    saved_op = 0
    non_skip = 0
    start = time.time()
    frame_time_total =0
    print(videos)

    for video in videos: 
        cap = cv2.VideoCapture(os.path.join(video_save_path, video))
        skip = 0
        i = 0
    
        print(f"Processing {video}") 

        while(True):
            startFrameTime = time.time()
            ret, frame = cap.read()
            if(not ret):
                print("Done")
                break

            total_frames_op += 1

            #too similar to previous image
            if(skip>0):
                skip = skip - 1
                continue
    
            # Process Image   
            datum = op.Datum()
            datum.cvInputData = frame
            opWrapper.emplaceAndPop(op.VectorDatum([datum]))
        
            #save good images 
            if(good_image(datum.poseKeypoints())):
                cv2.imwrite(os.path.join(op_save_path,video[:-4]+'_'+str(i)+'.jpg'), frame)
                skip = 14   #max 2 frames per second (30fps video)
                saved_op+=1
                i+=1

            non_skip += 1
            frame_time = time.time()-startFrameTime
            frame_time_total += frame_time

        cap.release()
        cv2.destroyAllWindows()

    print("-----------------")
    print("Openpose Finished")
    print("-----------------")     

    #openpose stats calculation
    time_op = time.time()-start
    m, s = divmod(time_op, 60)
    h, m = divmod(m, 60)
    avg_frame_op  = frame_time_total/non_skip
    
    #################
    #Begin Mask-RCNN#
    #################
    from generate_masks import rcnn_detect

    print("---------------")
    print("Begin Mask-RCNN")
    print("---------------")
    frame_names = os.listdir(op_save_path)
    total_frames_rcnn = len(frame_names)
    saved_rcnn = 0
    start_rcnn = time.time()
    for frame_name in frame_names:
        frame = cv2.imread(os.path.join(op_save_path, frame_name))
        mask = rcnn_detect(frame)
        
        if(mask != []):
            mask = mask.astype("uint8")
            frame = cv2.resize(frame, (1920,1080), interpolation = cv2.INTER_CUBIC)
            mask = cv2.resize(mask, (1920,1080), interpolation = cv2.INTER_CUBIC)

            cv2.imwrite(os.path.join(rcnn_mask_save_path, frame_name), mask)
            cv2.imwrite(os.path.join(rcnn_img_save_path, frame_name), frame)
            saved_rcnn += 1
    print("------------------")
    print("Mask-RCNN finished")
    print("------------------")

    #Mask Rcnn stats calculation 
    time_rcnn = time.time()-start_rcnn
    m1, s1 = divmod(time_rcnn, 60)
    h1, m1 = divmod(m1, 60)
    avg_frame_rcnn  = time_rcnn/total_frames_rcnn

    #print stats
    print("OpenPose Stats")
    print(f"Total Openpose Processing time: {h:.0f} hr {m:.0f} min {s:.0f} sec")
    print(f"Total frames saved: {saved_op} out of {total_frames_op}")
    print(f"Average Frame process time: {avg_frame_op:.5f} sec")

    print("-------------------------------------------------------------")

    print("Mask-RCNN Stats")
    print(f"Total Mask-RCNN Processing time: {h1:.0f} hr {m1:.0f} min {s1:.0f} sec")
    print(f"Total Frames saved: {saved_rcnn} out of {total_frames_rcnn}")
    print(f"Average Frame process time: {avg_frame_rcnn:.5f} sec")


except Exception as e:
    print(e)
    sys.exit(-1)
