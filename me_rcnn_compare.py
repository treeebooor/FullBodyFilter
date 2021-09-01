import os
import cv2
import numpy as np
import time

def calculate_iou(rcnn, me):
    '''
    Calcuate and return iou of input masks

    Args:
        rcnn mask
        me mask
    
    Returns:
        iou of rcnn and me masks
    '''
    epsilon = 1e-7
    inter = np.sum(rcnn * me)
    union = np.sum(rcnn) + np.sum(me) - inter

    #print(f"inter={inter} union={union}")
    return (inter + epsilon) / (union + epsilon)

def generate_final_comparison_visual(orig, rcnn, me, iou):
    '''
    concatentate the two masks with original image to create final comparison visual

    Args:
        original image
        rcnn mask
        me mask
        iou of rcnn and me mask

    Returns:
        side by side comparsion of rcnn vs me masks
    '''
    #resize
    rcnn_small = cv2.resize(rcnn, (960, 540), interpolation = cv2.INTER_CUBIC)    
    me_small = cv2.resize(me, (960, 540), interpolation = cv2.INTER_CUBIC)    
    orig_small = cv2.resize(orig, (960, 540), interpolation = cv2.INTER_CUBIC)    

    #add labels
    cv2.putText(rcnn_small, "Mask-RCNN", (10,30), cv2.FONT_HERSHEY_SIMPLEX, 1,(255,255,255), 2)
    cv2.putText(me_small, "ME", (10,30), cv2.FONT_HERSHEY_SIMPLEX, 1,(255,255,255), 2)

    #combine everything together
    left = np.concatenate((orig_small, rcnn_small), axis = 0)
    right = np.concatenate((orig_small, me_small), axis = 0)

    comparison = np.concatenate((left, right), axis =1)
    cv2.putText(comparison, f"iou = {iou:.3f}", (900, 1050), cv2.FONT_HERSHEY_SIMPLEX, 1, (0,0,255),2)

    return comparison
    


##################
#START COMPARISON#
##################

#parameters
img_path = '/home/ubuntu/Robert/fbData/allData/img3'    #path to rcnn images
mask_path = '/home/ubuntu/Robert/fbData/allData/mask3'    #path to rcnn masks
me_mask_path = 'testMEMask'    #path to ME generated masks
bad_img_path = 'testBadMask'    #path to save bad images
bad_mask_path = 'testBadImg'    #path to save bad masks
side_by_side = False    #whether or not to generate a comparison visual  
comparison_visual_path = 'testComp'    #path to save comparison visual
thresh = 0.5


imgs = sorted(os.listdir(img_path))
rcnn_masks = sorted(os.listdir(mask_path))
me_masks = sorted(os.listdir(me_mask_path))

start = time.time()
total_frames = len(imgs)
bad_frames = 0

print("------------------------")
print("Begin RCNN ME comparison")
print("------------------------")
print(f"Thresholding set to {thresh}")

#iterate through both directories in parallel
for i, (rcnn_name,me_name) in enumerate(zip(rcnn_masks, me_masks)):
    rcnn_mask = cv2.imread(os.path.join(mask_path, rcnn_name))
    me_mask = cv2.imread(os.path.join(me_mask_path, me_name))
    
    iou = calculate_iou(rcnn_mask/255, me_mask/255)

    #if iou is less than threshold  
    if(iou<thresh):
        img = cv2.imread(os.path.join(img_path, imgs[i]))
        cv2.imwrite(os.path.join(bad_img_path, imgs[i]), img)
        cv2.imwrite(os.path.join(bad_mask_path, rcnn_name), rcnn_mask)
        if(side_by_side):
            comparison = generate_final_comparison_visual(img, rcnn_mask, me_mask, iou)
            cv2.imwrite(os.path.join(comparison_visual_path, rcnn_name), comparison)

        bad_frames += 1
print("---------------------------")
print("RCNN ME comparison finished")
print("---------------------------")

#calculate stats
total_time = time.time()-start
avg_frame_time = total_time/total_frames
m, s = divmod(total_time, 60)
h, m = divmod(m, 60)
percent_bad = (bad_frames/total_frames)*100

#stats
print(f"{bad_frames} bad frames out of {total_frames} ( %{percent_bad:.0f} )")
print(f"Total Time: {h:.0f} hr {m:.0f} min {s:.0f} sec")
print(f"Average Time Per Frame: {avg_frame_time:.5f} sec")

    
