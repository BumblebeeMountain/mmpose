#!/usr/bin/env python3

from mmpose.apis import MMPoseInferencer

img_path = 'tests/data/coco/000000197388.jpg'
inferencer = MMPoseInferencer('human')
result_generator = inferencer(img_path, show=True)
result = next(result_generator)

