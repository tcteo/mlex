import torch

cuda_is_available = torch.cuda.is_available()
print(f'{cuda_is_available=}')

cuda_device_count = torch.cuda.device_count()
print(f'{cuda_device_count=}')

cuda_current_device = torch.cuda.current_device()
print(f'{cuda_current_device=}')

for di in range(0, cuda_device_count):
  print(f'device[{di}]: {torch.cuda.device(di)} name: {torch.cuda.get_device_name(di)}')
