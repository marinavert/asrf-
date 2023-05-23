# # create gt arrays
python ./utils/generate_gt_array.py #--dataset_dir [DATASET_DIR]
python ./utils/generate_boundary_array.py #--dataset_dir [DATASET_DIR]

# # make csv files for training and testing
python ./utils/make_csv_files.py --dataset_dir [DATASET_DIR]

# # make configuration files
python ./utils/make_configs.py --root_dir ./result/gtea --dataset gtea --split 1 2 3 4 --n_stages_asb 7 --n_stages_brb 7 --device 1

## stages_asb = 3, stages_brb = 3
python train.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-1_device-1/config.yaml
python evaluate.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-1_device-1/config.yaml --refinement_method refinement_with_boundary
python save_pred.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-1_device-1/config.yaml
python utils/convert_arr2img.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-1_device-1/predictions

python train.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-2_device-1/config.yaml
python evaluate.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-2_device-1/config.yaml --refinement_method refinement_with_boundary
python save_pred.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-2_device-1/config.yaml
python utils/convert_arr2img.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-2_device-1/predictions

python train.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-3_device-1/config.yaml
python evaluate.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-3_device-1/config.yaml --refinement_method refinement_with_boundary
python save_pred.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-3_device-1/config.yaml
python utils/convert_arr2img.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-3_device-1/predictions

python train.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-4_device-1/config.yaml
python evaluate.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-4_device-1/config.yaml --refinement_method refinement_with_boundary
python save_pred.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-4_device-1/config.yaml
python utils/convert_arr2img.py ./result/gtea/n_stages_asb-7_n_stages_brb-7_dataset-gtea_split-4_device-1/predictions