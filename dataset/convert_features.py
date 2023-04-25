import numpy as np
import torch 
import os

# # Get list of videos
# videos = sorted(os.listdir("/home/ubuntu/data/HAR_datasets/GTEA/png"))

# # For each video, load the .pth features (dim 2048), convert to numpy and save as .npy
# for video in videos:
#     features = torch.load('/home/ubuntu/data/video_feature_extractor/i3d_concat/'+video+'.pth').numpy()
#     np.save("/home/ubuntu/local/asrf/dataset/gtea/features/"+video,features)
#     print(video, " ", features.shape)

# Check gt_arr is gt annotation as integers and that boundaries are well defined (=1 when new action, else 0)
gt = np.load("/home/ubuntu/local/asrf/dataset/gtea/gt_arr/S1_Cheese_C1.npy")
print(gt[85:115])
boundary = np.load("/home/ubuntu/local/asrf/dataset/gtea/gt_boundary_arr/S1_Cheese_C1.npy")
print(boundary[85:115])