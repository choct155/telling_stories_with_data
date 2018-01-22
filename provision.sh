#!/usr/bin/env bash

sudo apt-get update

# Create folder to hold installers
sudo mkdir tools
cd tools

# Install git
sudo apt-get install git

# Install Atom Editor
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom

# Install tmux
sudo apt-get install tmux

# Get miniconda installer
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo chmod +x Miniconda3-latest-Linux-x86_64.sh
sudo ./Miniconda3-latest-Linux-x86_64.sh
# Add package channel
sudo conda config --add channels conda-forge
# Add ipython
sudo conda install ipython
# Add IDEs
sudo conda install jupyter notebook
sudo conda install jupyterlab
# Add numeric analysis packages
sudo conda install numpy
sudo conda install pandas
sudo conda install scikit-learn
sudo conda install statsmodels
# Add plotting packages
sudo conda install bokeh
sudo conda install matplotlib
sudo conda install plotly
sudo conda install seaborn
