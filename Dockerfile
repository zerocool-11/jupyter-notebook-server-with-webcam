FROM python:3.7

RUN apt-get update

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1 \
    git mercurial subversion
RUN wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
RUN bash Anaconda3-5.0.1-Linux-x86_64.sh -b
ENV PATH /root/anaconda3/bin:$PATH
RUN jupyter notebook --allow-root --generate-config
RUN echo "c.NotebookApp.password = u'sha1:83a7fcb17cf6:6e86f145862fb06315986ae6096888f773728600' " >> ~/.jupyter/jupyter_notebook_config.py

RUN apt-get install -y libgomp1
RUN apt-get install -y libgtk2.0-0 x11-xserver-utils libcanberra-gtk3-module
RUN apt-get install -y libcanberra-gtk*
COPY requirements.txt .
RUN pip install -U pip
RUN pip install -U jupyter
RUN pip install -r requirements.txt --ignore-installed certifi --no-cache-dir
RUN pip3 uninstall -y  ipython
RUN pip3 install --upgrade --force jupyter-console --ignore-installed ipython-genutils
RUN pip3 install 'prompt-toolkit<2.1.0,>=2.0.0' --force-reinstall
RUN pip install six~=1.15.0



WORKDIR /home
CMD /bin/bash
