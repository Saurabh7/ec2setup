curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-get install unzip

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get install docker-ce

sudo docker pull kaggle/python

sudo docker run --rm -it     -v $PWD:/tmp/working -w=/tmp/working     -p 8888:8888 kaggle/python jupyter notebook     --no-browser --ip="0.0.0.0"     --notebook-dir=/tmp/working     --allow-root
