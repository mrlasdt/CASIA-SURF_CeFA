wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
source ~/.bashrc
conda create -n rapids-22.10 -c rapidsai -c conda-forge -c nvidia  \
    rapids=22.10 python=3.9 cudatoolkit=11.2