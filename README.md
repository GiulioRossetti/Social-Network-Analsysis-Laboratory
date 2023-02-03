# Social Network Analysis Laboratory

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Jupyter Notebook](https://img.shields.io/badge/jupyter-%23FA0F00.svg?style=for-the-badge&logo=jupyter&logoColor=white)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)


This repository contains the Docker container specification for the Social Network Analysis Laboratory: a pre-configured Jupyter Lab environment offering tools and algorithms to model, analyze and visualize complex networks.

## Requirements

To execute the container, you need to have Docker (and Docker Compose if you plan to build the image locally) installed on your machine. 

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Usage 

The SNALab can be accessed following two different approaches: downloading the prebuilt image from Docker Hub or building the image locally.

Once the container is ready the Jupyter lab service be available at [http://localhost:8000](http://localhost:8000).

#### 1. Using the Docker Hub image (suggested)

The SNALab image is available on Docker Hub. To run the container, simply execute the following command:

```bash
  docker pull rossetti/snalab:latest
  docker run -d -i -p 8000:8000 snalab
```

If you prefer not using the command line tools, you can also use the [Docker Desktop](https://www.docker.com/products/docker-desktop/) application to run the container (available for Windowns, MacOs and Linux).

#### 2. Building the image locally

Alternatively, you can build the image locally by cloning this repository and running the following command:

```bash
  docker-compose up -d
```

### Stop the container

To stop the container, run the following command:

```bash
  docker-compose down
```

## Main python packages included in the SNA Laboratory

The SNA Laboratory is an evolving project. The following list contains the main python packages included in the current release of the container.
For a complete list of the packages included in the container, please refer to the individual projects' pages.

#### Network modeling and analysis

Static networks:
- [NetworkX](https://networkx.org/)
- [igraph](https://igraph.org/python/)
- [graph-tool](https://graph-tool.skewed.de/)

Dynamic networks:
- [dynetx](https://dynetx.readthedocs.io/en/latest/)

Higher-order networks:
- [hypernetx](https://hypernetx.readthedocs.io/en/latest/)

#### Task specific applications

Community detection:
- [cdlib](https://cdlib.readthedocs.io/en/latest/)

Epidemics and Opinion Dynamics:
- [ndlib](https://ndlib.readthedocs.io/en/latest/)

Supervised learning:
- [karateclub](https://karateclub.readthedocs.io/en/latest/)

Link Prediction:
- [linkpred](https://linkpred.readthedocs.io/en/latest/)

Power law distributions fitting:
- [powerlaw](https://pypi.org/project/powerlaw/)

## Tips

1. Data and notebooks stored in the container are not persistent. To save your work, you can mount a local directory as a volume in the container (or remember to download/upload your code/file each time you stop/start the laboratory). 
2. The same observation applies also to python module installed in the container. If you want to install a new module, you need to do it each time you start the container.
3. The container is configured to use a no-password access Jupyter Lab.
4. You can access the container disk from the bash terminal exposed within the Jupyter Lab environment. 
5. The Jupyter Lab environment is configured to use the `python3.9` kernel.
6. Along with the Jupyter Lab environment, are packaged a set of notebooks covering the lectures of the Social Network Analysis Course at the [University of Pisa](https://github.com/sna-unipi)





