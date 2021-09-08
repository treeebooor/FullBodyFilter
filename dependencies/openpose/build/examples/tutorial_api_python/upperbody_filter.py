# From Python
# It requires OpenCV installed for Python
import sys
import cv2
import os
import time
import numpy as np
from sys import platform
import argparse


def single_person_check(points):
    '''
    Check if there is a single person in the image from given keypoints
    '''
    if(points.shape[0] ==1):
        #print("single person")
        return True
    #print("more than 1 person")
    return False

def upperbody_check(points):
    '''
    Check if image contains upperbody person given single person keypoints
    '''
    #face: 0
    #right/left shoulders:(2,5)
    #right foot toes:(22,23)
    #left foot toes:(19,20)
    #check boundary points
    upper_pts = [0,2,5]
    feet_pts = [11,24,22,23,21,19,14,20]
    for pt in upper_pts:
        if(points[0][pt][2] == 0):
            return False
    #feet points
    for pt in feet_pts:
        if(points[0][pt][2] != 0):
            return False
    return True

def good_image(points):
    '''
    Check if image contains single fullbody person from keypoints
    '''
    #if points is blank
    if(not np.any(points)):
        return False

    points = datum.poseKeypoints
    if(single_person_check(points)):
         if(upperbody_check(points)):
             return True
    return False


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

    # Starting OpenPose
    opWrapper = op.WrapperPython()
    opWrapper.configure(params)
    opWrapper.start()

    #Process video
    video  = "dance_solos.mp4"
    cap = cv2.VideoCapture('../../../../videos/'+video)
    skip = 0
    count = 0
    total_count = 0
    start_all = time.time()
    print("Starting upper body filtering...")
    print(f"Processing {video}") 
    while(True):
        ret, frame = cap.read()
        if(not ret):
            print("done")
            break

        #too similar to previous image
        if(skip>0):
            #count = count +1
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
            cv2.imwrite('./upperbody_images/'+video[:-4]+'_'+str(count)+'.jpg', frame)
            skip = 14   #max 2 frames per second (30fps video)
            count+=1
        total_count += 1
    print(f"Total frames saved:{count} out of {total_count}")

    #total time
    time_total = time.time()-start_all
    m, s = divmod(time_total, 60)
    h, m = divmod(m, 60)
    print(f"Total time: {h:.0f} hr {m:.0f} min {s:.0f} sec")

except Exception as e:
    print(e)
    sys.exit(-1)
