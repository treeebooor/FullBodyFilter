import os
import cv2
import numpy as np

def calculate_iou(rcnn, me):
    '''
    Calcuate and return iou of input masks
    '''
    epsilon = 1e-7
    inter = np.sum(rcnn * me)
    union = np.sum(rcnn) + np.sum(me) - inter

    #print(f"inter={inter} union={union}")
    return (inter + epsilon) / (union + epsilon)

def generate_final_comparison(orig, rcnn, me, iou):
    '''
    concatentate the two masks with original image to create final comparison visual
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
    



number =2
orig_src = '../trainData/allData/img' +str(number)+'/'
rcnn_src = '../trainData/allData/mask'+str(number)+'/'
me_src = 'me_mask'+str(number)'/' 

print(orig_src)
print(rcnn_src)
print(me_src)

orig_imgs = sorted(os.listdir(orig_src))
rcnn_masks = sorted(os.listdir(rcnn_src))
me_masks = sorted(os.listdir(me_src))

thresh = 0.5

#iterate through both directories in parallel
for i, (rcnn_name,me_name) in enumerate(zip(rcnn_masks, me_masks)):
    rcnn_mask = cv2.imread(rcnn_src + rcnn_name)
    me_mask = cv2.imread(me_src + me_name)
    
    iou = calculate_iou(rcnn_mask/255, me_mask/255)

    #if iou is bad    
    if(iou<thresh):
        orig = cv2.imread(orig_src + orig_imgs[i])
        comparison = generate_final_comparison(orig, rcnn_mask, me_mask, iou)
        cv2.imwrite('../trainData/lemons_0.5/comparison'+str(number)+'/'+rcnn_name, comparison)
        cv2.imwrite('../trainData/lemons_0.5/img'+str(number)+'/' + orig_imgs[i], orig)
        cv2.imwrite('../trainData/lemons_0.5/mask'+str(number)+'/'+rcnn_name, rcnn_mask)
        print("Lemon:", me_name, rcnn_name, iou)
    
