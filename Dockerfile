FROM jupyter/datascience-notebook:latest

RUN mkdir ./jupyterlab ./data

COPY requirements.txt /opt/requirements.txt

RUN pip install pip --upgrade \
    && pip install -r /opt/requirements.txt \
RUN pip install ipywidgets \
    && jupyter labextension install @lckr/jupyterlab_variableinspector \
    && jupyter labextension install @jupyterlab/toc \
    && jupyter labextension install @jupyter-widgets/jupyterlab-manager \
    && jupyter nbextension enable --py --sys-prefix widgetsnbextension
