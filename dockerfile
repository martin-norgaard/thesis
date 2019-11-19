FROM jupyter/datascience-notebook

COPY environment.yml ${HOME}/environment.yml

# Add dependencies
RUN conda env update -f environment.yml --quiet && \
    rm -fr work environment.yml

# Add extensions
RUN jupyter labextension install \
    @jupyterlab/toc \
    jupyter-matplotlib \
    @lckr/jupyterlab_variableinspector
