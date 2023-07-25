python train.py ./result/gtea/no_wce_0_2/dataset-gtea_split-1/config.yaml
python train.py ./result/gtea/no_wce_0_2/dataset-gtea_split-2/config.yaml
python train.py ./result/gtea/no_wce_0_2/dataset-gtea_split-3/config.yaml
python train.py ./result/gtea/no_wce_0_2/dataset-gtea_split-4/config.yaml
# -- no weight but with pre feats

# # # test
python evaluate.py ./result/gtea/no_wce_0_2/dataset-gtea_split-1/config.yaml --refinement_method refinement_with_boundary
python evaluate.py ./result/gtea/no_wce_0_2/dataset-gtea_split-2/config.yaml --refinement_method refinement_with_boundary
python evaluate.py ./result/gtea/no_wce_0_2/dataset-gtea_split-3/config.yaml --refinement_method refinement_with_boundary
python evaluate.py ./result/gtea/no_wce_0_2/dataset-gtea_split-4/config.yaml --refinement_method refinement_with_boundary

# # average cross validation results.
# # python utils/average_cv_results.py ./result/50salads
# python utils/average_cv_results.py ./result/gtea/no_wce_0_2
# # python utils/average_cv_results.py ./result/breakfast

# # output visualization
# # save outputs as np.array
python save_pred.py /home/ubuntu/local/asrf++/result/gtea/no_wce_0_2/dataset-gtea_split-1/config.yaml
python save_pred.py /home/ubuntu/local/asrf++/result/gtea/no_wce_0_2/dataset-gtea_split-2/config.yaml
python save_pred.py /home/ubuntu/local/asrf++/result/gtea/no_wce_0_2/dataset-gtea_split-3/config.yaml
python save_pred.py /home/ubuntu/local/asrf++/result/gtea/no_wce_0_2/dataset-gtea_split-4/config.yaml

# # # convert array to image
python utils/convert_arr2img.py /home/ubuntu/local/asrf++/result/gtea/no_wce_0_2/dataset-gtea_split-1/predictions
python utils/convert_arr2img.py /home/ubuntu/local/asrf++/result/gtea/no_wce_0_2/dataset-gtea_split-2/predictions
python utils/convert_arr2img.py /home/ubuntu/local/asrf++/result/gtea/no_wce_0_2/dataset-gtea_split-3/predictions
python utils/convert_arr2img.py /home/ubuntu/local/asrf++/result/gtea/no_wce_0_2/dataset-gtea_split-4/predictions