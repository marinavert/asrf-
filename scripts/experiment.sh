# # FIRST OF ALL, YOU NEED TO DOWNLOAD THE FEATURES OF THE THREE DATASET FROM:
# # https://github.com/yabufarha/ms-tcn

# # create gt arrays
# python utils/generate_gt_array.py #--dataset_dir [DATASET_DIR]
# python utils/generate_boundary_array.py #--dataset_dir [DATASET_DIR]

# # make csv files for training and testing
# python utils/make_csv_files.py --dataset_dir [DATASET_DIR]

# # make configuration files
python utils/make_configs.py --root_dir ./result/gtea/no_prefeats --dataset gtea --split 1 2 3 4



# # gtea dataset
# # training
python train.py ./result/gtea/no_prefeats/dataset-gtea_split-1/config.yaml
python train.py ./result/gtea/no_prefeats/dataset-gtea_split-2/config.yaml
python train.py ./result/gtea/no_prefeats/dataset-gtea_split-3/config.yaml
python train.py ./result/gtea/no_prefeats/dataset-gtea_split-4/config.yaml
# -- no weight but with pre feats

# # # test
python evaluate.py ./result/gtea/no_prefeats/dataset-gtea_split-1/config.yaml --refinement_method refinement_with_boundary
python evaluate.py ./result/gtea/no_prefeats/dataset-gtea_split-2/config.yaml --refinement_method refinement_with_boundary
python evaluate.py ./result/gtea/no_prefeats/dataset-gtea_split-3/config.yaml --refinement_method refinement_with_boundary
python evaluate.py ./result/gtea/no_prefeats/dataset-gtea_split-4/config.yaml --refinement_method refinement_with_boundary

# # average cross validation results.
# # python utils/average_cv_results.py ./result/50salads
# python utils/average_cv_results.py ./result/gtea/no_prefeats
# # python utils/average_cv_results.py ./result/breakfast

# # output visualization
# # save outputs as np.array
python save_pred.py /home/ubuntu/local/asrf++/result/gtea/no_prefeats/dataset-gtea_split-1/config.yaml
python save_pred.py /home/ubuntu/local/asrf++/result/gtea/no_prefeats/dataset-gtea_split-2/config.yaml
python save_pred.py /home/ubuntu/local/asrf++/result/gtea/no_prefeats/dataset-gtea_split-3/config.yaml
python save_pred.py /home/ubuntu/local/asrf++/result/gtea/no_prefeats/dataset-gtea_split-4/config.yaml

# # # convert array to image
python utils/convert_arr2img.py /home/ubuntu/local/asrf++/result/gtea/no_prefeats/dataset-gtea_split-1/predictions
python utils/convert_arr2img.py /home/ubuntu/local/asrf++/result/gtea/no_prefeats/dataset-gtea_split-2/predictions
python utils/convert_arr2img.py /home/ubuntu/local/asrf++/result/gtea/no_prefeats/dataset-gtea_split-3/predictions
python utils/convert_arr2img.py /home/ubuntu/local/asrf++/result/gtea/no_prefeats/dataset-gtea_split-4/predictions