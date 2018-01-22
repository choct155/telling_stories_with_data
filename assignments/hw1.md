# Homework #1

In this first assignment, you are to perform the following tasks:

1. Install VirtualBox (per the instructions in [INSTALL.md](https://github.com/choct155/telling_stories_with_data/blob/master/INSTALL.md))
2. Get the [Ubuntu ISO](https://www.ubuntu.com/download/desktop) and save it to disk
3. Initialize your VM as directed in INSTALL.md
4. Create a [Github](https://github.com/) account
5. [Fork](https://guides.github.com/activities/forking/) `https://github.com/choct155/telling_stories_with_data.git`
6. Launch [Jupyter Lab](https://github.com/jupyterlab/jupyterlab) from the command line with `sudo jupyter lab --allow-root` and copy the URL into a browser (e.g. Firefox)
7. Examine the Notebooks in examples and reference the [I/O methods](http://pandas.pydata.org/pandas-docs/stable/io.html) for the [pandas](http://pandas.pydata.org/pandas-docs/stable/index.html) library. Use the examples and docs to create three charts. This is probably most easily done in a Notebook, but you are free to use a script or the Qt Console to write them to disk if you like. You are free to use any plotting library you like (the examples use [matplotlib](https://matplotlib.org/) and [bokeh](https://bokeh.pydata.org/en/latest/)).
  1. The first should read in the data from `../assignments/data/hw1_test_data.csv` and plot `x` against `y` in a scatter plot.
  2. The second should use data you have simulated (see `../examples/simulating_data.ipynb`) to create a plot of your choosing.
  3. The third should capture timeseries data using the BLS API (see `../examples/api_example.ipynb`) to create a line chart.


Note that the installation itself may take some time. It is better to do that sooner than later, so you can send any questions you might have with the infrastructure we will be using from here on out.
