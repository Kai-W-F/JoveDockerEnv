FROM continuumio/anaconda3:latest

RUN apt-get update && apt-get install -y \
    curl \
    git \
    && apt-get clean

WORKDIR /opt/Jove

RUN conda update -n base -c defaults conda -y

RUN conda install -y jupyter

RUN conda install -y graphviz

RUN pip install graphviz

RUN apt update

RUN apt install pandoc

RUN apt install texlive-xetex 

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
