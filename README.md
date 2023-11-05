# COMP7404 Project Group X

- Ng Hon Lam

- Li Xiang

- Suen Heung Ping

- Liu Wenrui
## Paper Used
[RTFormer: Efficient Design for Real-Time Semantic Segmentation with Transformer](https://proceedings.neurips.cc/paper_files/paper/2022/file/30e10e671c5e43edb67eb257abb6c3ea-Paper-Conference.pdf)

Github: https://github.com/PaddlePaddle/PaddleSeg

# Guideline to run the code
1. Git clone from https://github.com/PaddlePaddle/PaddleSeg
2. Follow the instruction at https://github.com/PaddlePaddle/PaddleSeg/blob/release/2.8/docs/install_cn.md to configure the environment
3. Download the dataset needed:
   | Dataset | URL |
   | ------    | --------                            |
   | Cityscape | https://www.cityscapes-dataset.com/ <tr></tr>|
   | ADE20K    | https://groups.csail.mit.edu/vision/datasets/ADE20K/ <tr></tr> |
   | Pascal VOC12|http://host.robots.ox.ac.uk/pascal/VOC/ <tr></tr>|
   |COCO Stuff|https://github.com/nightrome/cocostuff|
   
# Experiment & Results

## Original Dataset in the paper

### CityScape
Link to dataset: https://www.cityscapes-dataset.com/
### ADE20K
Link to dataset: https://groups.csail.mit.edu/vision/datasets/ADE20K/

## Extra Dataset Performance

Reference: https://github.com/PaddlePaddle/PaddleSeg/blob/release/2.8/docs/data/pre_data_cn.md

### Pascal VOC12
Official Site: http://host.robots.ox.ac.uk/pascal/VOC/

Dataset information (After using [SBD(Semantic Boundaries Dataset)](https://www.cs.cornell.edu/~bharathh/):

||Number of images|
|-----|-----|
|Training Set|10.5K<tr></tr>|
|Validation Set|1.4K|

Model Performance:
   |Model	|Backbone	|Resolution	|Training Iters	|mIoU|	mIoU (flip)|	mIoU (ms+flip)|	Links|
   | ------    | --------|--------|-------|---------|---------|-----------|-----                            |
   | RTFormer-Base	|-|	512x512	|120000	|%	|%	|%	|model  log  vdl <tr></tr>|
   | RTFormer-Slim	|-|	512x512	|120000	|%	|%	|%	|model  log  vdl|

### COCO Stuff
Official Site: https://github.com/nightrome/cocostuff

Dataset information:

||Number of images|
|-----|-----|
|Training Set|118K<tr></tr>|
|Validation Set|5K|


   |Model	|Backbone	|Resolution	|Training Iters	|mIoU|	mIoU (flip)|	mIoU (ms+flip)|	Links|
   | ------    | --------|--------|-------|---------|---------|-----------|-----                            |
   | RTFormer-Base	|-|	512x512	|10000	|%	|%	|%	|model  log  vdl <tr></tr>|
   | RTFormer-Slim	|-|	512x512	|10000	|%	|%	|%	|model  log  vdl|


