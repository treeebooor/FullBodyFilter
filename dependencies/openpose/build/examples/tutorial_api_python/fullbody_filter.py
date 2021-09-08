# From Python
# It requires OpenCV installed for Python
import sys
import cv2
import os
import time
import numpy as np
from sys import platform
import argparse

#from downloadVideo import download


def single_person_check(points):
    '''
    Check if there is a single person in the image from given keypoints
    '''
    if(points.shape[0] ==1):
        #print("single person")
        return True
    #print("more than 1 person")
    return False

def fullbody_check(points):
    '''
    Check if image contains fullbody person given single person keypoints
    '''
    #face: 0
    #right hand:4
    #left hand: 7
    #right foot toes:(22,23)
    #left foot toes:(19,20)
    #check boundary points
    upper_pts = [0,4,7]
    for pt in upper_pts:
        print(points[0][pt][2])
        if(points[0][pt][2] < 0.1):
            return False
    #feet points
    if(points[0][19][2]==0 and points[0][20][2]<0.1):
        return False
    if(points[0][22][2]==0 and points[0][23][2]<0.1):
        return False
    return True

def good_image(points):
    '''
    Check if image contains single fullbody person from keypoints
    '''
    #if points is blank
    if(not np.any(points)):
        return False

    #points = datum.poseKeypoints
    if(single_person_check(points)):
        if(fullbody_check(points)):
            return True
    return False

'''
try:

    # Import Openpose (Windows/Ubuntu/OSX)
    dir_path = os.path.dirname(os.path.realpath(__file__))
    try:
        # Windows Import
        if platform == "win32":
            # Change these variables to point to the correct folder (Release/x64 etc.)
            sys.path.append(dir_path + '/../../python/openpose/Release');
            os.environ['PATH']  = os.environ['PATH'] + ';' + dir_path + '/../../x64/Release;' +  dir_path + '/../../bin;'
            import pyopenpose as op
        else:
            # Change these variables to point to the correct folder (Release/x64 etc.)
            sys.path.append('../../python');
            # If you run `make install` (default path is `/usr/local/python` for Ubuntu), you can also access the OpenPose/python module from there. This will install OpenPose and the python library at your desired installation path. Ensure that this is in your python path in order to use it.
            # sys.path.append('/usr/local/python')
            from openpose import pyopenpose as op
    except ImportError as e:
        print('Error: OpenPose library could not be found. Did you enable `BUILD_PYTHON` in CMake and have this Python script in the right folder?')
        raise e

    # Flags
    parser = argparse.ArgumentParser()
    parser.add_argument("--image_path", default="../../../examples/media/COCO_val2014_000000000589.jpg", help="Process an image. Read all standard formats (jpg, png, bmp, etc.).")
    args = parser.parse_known_args()

    # Custom Params (refer to include/openpose/flags.hpp for more parameters)
    params = dict()
    params["model_folder"] = "../../../models/"
    params["disable_blending"] = True
    params["render_pose"] = 0
    params["display"] = 0
    #params["net_resolution"] = "-1x208"
    # Add others in path?
    for i in range(0, len(args[1])):
        curr_item = args[1][i]
        if i != len(args[1])-1: next_item = args[1][i+1]
        else: next_item = "1"
        if "--" in curr_item and "--" in next_item:
            key = curr_item.replace('-','')
            if key not in params:  params[key] = "1"
        elif "--" in curr_item and "--" not in next_item:
            key = urr_item.replace('-','')
            if key not in params: params[key] = next_item

    # Construct it from system arguments
    # op.init_argv(args[1])
    # oppython = op.OpenposePython()


    ##############################
    # Starting OpenPose filtering#
    ##############################
    opWrapper = op.WrapperPython()
    opWrapper.configure(params)
    opWrapper.start()

    #download videos
    links = [
        ""
    ]
    save_path = '../../../../videos/'
    #download(links, save_path)

    #Process video
    videos_src = '../../../../videos/' 
    videos = os.listdir(videos_src)
    saved = 0
    total_count = 0
    start_all = time.time()

    print(videos)
    for video in videos:    
        cap = cv2.VideoCapture(videos_src+video)
        skip = 0
        i = 0
      
        print(f"Processing {video}") 

        while(True):
            ret, frame = cap.read()
            if(not ret):
                print("Done Processing ", video)
                break
    
            total_count += 1

            #too similar to previous image
            if(skip>0):
                skip = skip - 1
                continue
    
            # Process Image
            start = time.time()
            datum = op.Datum()
            datum.cvInputData = frame
            opWrapper.emplaceAndPop(op.VectorDatum([datum]))
            print(f"frame process time:{time.time()-start}")
            
            #save good images(1920x1080) 
            if(good_image(datum.poseKeypoints)):
                frame = cv2.resize(frame, (1920,1080), interpolation = cv2.INTER_CUBIC)
                print("not imwriting!!")
                #cv2.imwrite('./fullbody_images1/'+video[:-4]+'_'+str(i)+'.jpg', frame)
                skip = 14   #max 2 frames per second (30fps video)
                saved+=1
                i+=1


    print(f"Total frames saved:{saved} out of {total_count}")
    
    #total time
    time_total = time.time()-start_all
    m, s = divmod(time_total, 60)
    h, m = divmod(m, 60)
    print(f"Total time: {h:.0f} hr {m:.0f} min {s:.0f} sec")

except Exception as e:
    print(e)
    sys.exit(-1)
'''