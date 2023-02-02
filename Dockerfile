FROM --platform=linux/amd64 ubuntu
ARG TARGETARCH

MAINTAINER Giulio Rossetti <giulio.rossetti@gmail.com>

RUN apt-get update && apt-get -y upgrade && apt-get install -y libgmp3-dev libmpfr-dev libmpc-dev wget bzip2 build-essential libxcursor-dev libglib2.0-dev
RUN echo "deb [ arch=amd64 ] https://downloads.skewed.de/apt jammy main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 612DEFB798507F25
RUN apt-get update
RUN apt-get update && apt-get -y upgrade && apt-get install -y git python3-pip libcairo2-dev python3-graph-tool

COPY requirements.txt /tmp/

RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt

RUN mkdir -p /opt/notebooks
RUN cd /opt/notebooks

WORKDIR /opt/notebooks
RUN git clone https://github.com/sna-unipi/SNA_lectures_notebooks.git

EXPOSE 8000
ENTRYPOINT ["jupyter", "lab","--ip=*", "--notebook-dir=/opt/notebooks", "--port=8000", "--no-browser", "--allow-root", "--NotebookApp.token=", "--NotebookApp.password="]
