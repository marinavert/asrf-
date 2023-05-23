import torch
# num_gpus = torch.cuda.device_count()
# available_gpus = [torch.cuda.device(i) for i in range(torch.cuda.device_count())]
# print("There are ", num_gpus, "  ", available_gpus)

device = "cuda:" + str(0) if torch.cuda.is_available() else "cpu"
if device == "cuda:" + str(0):
    torch.backends.cudnn.benchmark = True
print(device)