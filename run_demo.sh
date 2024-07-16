#!/bin/bash

 python demo/image_demo.py \
     ../image-datasets/climbing-images/man-climbing-rock-wall-with-raised-hands.jpg \
     td-hm_hrnet-w48_8xb32-210e_coco-256x192.py \
     td-hm_hrnet-w48_8xb32-210e_coco-256x192-0e67c616_20220913.pth \
     --out-file vis_results.jpg \
     --draw-heatmap

# python demo/image_demo.py \
#     ../image-datasets/climbing-images/man-climbing-rock-wall-with-raised-hands.jpg \
#     ./configs/body_3d_keypoint/motionbert/h36m/motionbert_dstformer-243frm_8xb32-240e_h36m-original.py \
#     ./motionbert_h36m-f554954f_20230531.pth \
#     --out-file vis_results.jpg \
