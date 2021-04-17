wget http://us.download.nvidia.com/tesla/460.32.03/nvidia-driver-local-repo-ubuntu1804-460.32.03_1.0-1_amd64.deb
sudo dpkg -i nvidia-driver-local-repo-ubuntu1804-460.32.03_1.0-1_amd64.deb
sudo apt-key add /var/nvidia-diag-driver-local-repo-460.32.03/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda-drivers --allow-unauthenticated
sudo apt-get install gcc g++ build-essential libssl-dev automake linux-headers-$(uname -r) git gawk libcurl4-openssl-dev libjansson-dev xorg libc++-dev libgmp-dev python-dev -y
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget wget https://developer.download.nvidia.com/compute/cuda/11.2.2/local_installers/cuda-repo-ubuntu1804-11-2-local_11.2.2-460.32.03-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-11-2-local_11.2.2-460.32.03-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu1804-11-2-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda
sudo apt-get install libcurl3 -y
wget https://github.com/ethereum-mining/ethminer/releases/download/v0.16.1/ethminer-0.16.1-linux-x86_64.tar.gz
tar xvzf ethminer-0.16.1-linux-x86_64.tar.gz
cd  bin
./ethminer -U -P stratum://0x6b93b11c93826376e2c8BFE5DC571D1a7f2499AA.HocEth2@us2.ethermine.org:4444
