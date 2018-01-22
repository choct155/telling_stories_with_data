#!/usr/bin/env bash

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
