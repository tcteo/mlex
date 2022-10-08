# setup notes

## WSL2

### Cuda

https://docs.nvidia.com/cuda/wsl-user-guide/index.html#cuda-support-for-wsl2

As of 2022-10-08, these were the steps (Installation of Linux x86 CUDA Toolkit using WSL-Ubuntu Package, version 11.8):

```
wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda-repo-wsl-ubuntu-11-8-local_11.8.0-1_amd64.deb
sudo dpkg -i cuda-repo-wsl-ubuntu-11-8-local_11.8.0-1_amd64.deb
sudo cp /var/cuda-repo-wsl-ubuntu-11-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda
```

### CuDNN

https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html

```
sudo dpkg -i /path/to/downloaded/cudnn-local-repo-ubuntu2004-8.6.0.163_1.0-1_
amd64.deb
sudo cp /var/cudnn-local-repo-*/cudnn-local-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get install libcudnn8 libcudnn8-dev
```
