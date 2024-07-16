#!/usr/bin/env python3

from mmpose.apis import MMPoseInferencer

# img_path = 'tests/data/coco/000000197388.jpg'
# img_path = '../image-datasets/climbing-videos/climb3.mp4'
# img_path = '../image-datasets/self/PXL_20240618_131914073.mp4'
# img_path = '../image-datasets/self/downsampled.mp4'
img_path = '../image-datasets/climbing-images/man-climbing-rock-wall-with-raised-hands.jpg'

# build the inferencer with 3d model config path and checkpoint path/URL
inferencer = MMPoseInferencer(
    pose3d='configs/body_3d_keypoint/motionbert/h36m/' \
           'motionbert_dstformer-ft-243frm_8xb32-120e_h36m.py',
    pose3d_weights='https://download.openmmlab.com/mmpose/v1/body_3d_keypoint/' \
                   'pose_lift/h36m/motionbert_ft_h36m-d80af323_20230531.pth'
)

result_generator = inferencer(img_path, show=False, out_dir='climb_bert_output')
print("here")
noException = True
i = 0
while noException:

    print(f"run {i}")
    try:
        result = next(result_generator)
        i += 1
    except:
        noException = False
print("here 2")
