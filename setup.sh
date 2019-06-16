curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install unzip htop
sudo apt-get install python-pip
pip install kaggle

sudo apt-get install docker-ce

sudo docker pull kaggle/python

wget https://developer.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda-repo-ubuntu1804-10-1-local-10.1.168-418.67_1.0-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-10-1-local-10.1.168-418.67_1.0-1_amd64.deb
sudo apt-key add /var/cuda-repo-10-1-local-10.1.168-418.67/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda

sudo docker run --rm -it     -v $PWD:/tmp/working -w=/tmp/working     -p 8888:8888 kaggle/python jupyter notebook     --no-browser --ip="0.0.0.0"     --notebook-dir=/tmp/working     --allow-root
