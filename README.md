# Gene Family Size Pipeline.
## Introduction
This project encompasses a comprehensive pipeline designed to facilitate the creation process of obtaining the size of family genes. It involves providing a list of URLs to download genomes from NCBI and subsequently generate family trees and process genes.
## Installation
### Local
Clone the repository to your machine and start using the project. Ensure the system has python>=3.9.x.

The tools necessary for the pipeline to run smoothly are samtools, awk, grep, curl, gzip and the project Orthofinder. 

NOTE:Using this installation method you might need to change the working directory for the R script to the full path or wherever you downloaded the project or where you are going to save the python files.
### Docker
Alternatively you can clone the repository, and use the Dockerfile attached to build an image and use the project inside that image.

For this you will need to first create an image with the docker file:
sudo docker build -t orthofinder .

then after the image has been created over the dockerfile you can spawn an interactive tty shell with /bin/bash. This is possible  because the Docker image works on an Ubuntu Image.
sudo docker run –name Orthofind --interactive --tty orthofind /bin/bash

this will spawn a new shell and you will be able to find the files for the project in the /home/orthofinder repository.
Usage
Run the Python script. If any required flags or parameters are missing, the script will print the usage and examples. While running the script will print the stage it is and the process it is currently running.

The script accepts two parameters, one optional and one required:
--url-list: A text file containing URLs, each separated by a newline, from which genomes will be downloaded from NCBI.
--ortho-tree: A tree file (in the "tre" format) specifying the tree to be utilized in the processing.
# Usage Examples:
python3 orthofinder_better_optimized.py --url-list name.txt 

python3 orthofinder_better_optimized.py –url-list name.txt –ortho-three Mammalia_tree_130spp_plosOne_timetree_addedTips.tre
