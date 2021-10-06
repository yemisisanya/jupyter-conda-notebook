## Jupyter-conda-notebook

Jupyter conda notebook is a docker image built on top of [miniconda](https://hub.docker.com/r/continuumio/miniconda). It uses miniconda as the base image and installs jupyter notebook in the `/opt/conda` folder. Additionally, a user can create conda environment by passing in an environment name or one is created by default.

Also installed is [Voilà](https://voila.readthedocs.io/) which allows you to run jupyter notebooks with interactive widgets.

Each evironment will have the following libaries installed:
```
numpy
pandas
matplotlib
SciPy
Yellowbrick
fastapi
Scikit-learn
Seaborn
Tensorflow
nltk
Theano
Keras
opencv-python
bqplot
ipympl
ipyvolume
scipy
voila
ipywidgets
ipysheet
```

## Run docker image
Use docker-compose to run the docker image. If you want to pass in a conda environment use the command below:

```
docker-compose build  --build-arg CONDA_ENV=<YOUR CONDA ENV NAME> 
```
Otherwise, run this command and a conda evironment will be created by default:

```
docker-compose build   
```

To start the container, run:
```
docker-compose up
```

