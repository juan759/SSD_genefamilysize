#Dockerfile

#Para que la base del dockerfile sea Ubuntu.
FROM ubuntu

# Para python.
FROM python:3.10.13


#Instalamos todas las dependencias necesarias.
RUN apt-get update
RUN apt-get install -y r-base git
RUN R -e "install.packages(c('plyr', 'dplyr', 'tydiverse'), repos='http://cran.rstudio.com/')"
RUN apt-get install samtools -y
RUN apt-get install grep -y
RUN apt-get install curl -y
RUN apt-get install gzip -y
RUN apt-get install vim -y 

#Creamos el directorio dondde se encontrará el proyecto de python.
# Clone the GitHub project
RUN mkdir /home/orthofind/
WORKDIR /home/orthofind/
RUN git clone https://github.com/davidemms/OrthoFinder.git


#Guardando los archivos del proyecto Orthofinder en /home/orthofind  para que el usuario lo pueda usar.
ADD 8.Script_LargestSecs_Allsppecies.R /home/orthofind/
ADD SSD_genefamilysize.py /home/orthofind/
ADD logger.py /home/orthofind/
ADD cleaner.py /home/orthofind/
ADD genomes.txt /home/orthofind/
ADD genomes.csv /home/orthofind/ 