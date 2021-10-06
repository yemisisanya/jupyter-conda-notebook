
FROM continuumio/miniconda3
ARG CONDA_ENV=condauser
ENV environment=${CONDA_ENV}

LABEL maintainer="Yemisi Sanya <yemisi06@gmail.com>"

WORKDIR /notebooks

COPY entrypoint.sh /
COPY requirements.txt /

RUN conda install pip
RUN conda install -c conda-forge notebook xgboost jupyter_contrib_nbextensions voila

RUN conda create -n $environment python=3.9 

RUN conda install pytorch torchvision torchaudio -c pytorch

CMD ["conda", "run", "-n","echo $environment", "/bin/sh", "-c"]

RUN pip install --trusted-host pypi.python.org -r /requirements.txt
RUN apt-get update && apt-get install -y libgomp1 ffmpeg libsm6 libxext6

RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
RUN jupyter nbextension install --py --symlink --sys-prefix ipympl 
RUN jupyter nbextension enable --py --sys-prefix ipympl 
RUN jupyter nbextension install --py --symlink --sys-prefix ipysheet 
RUN jupyter nbextension enable --py --sys-prefix ipysheet

EXPOSE 8888

ENTRYPOINT ["/entrypoint.sh"]
