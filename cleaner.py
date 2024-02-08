import sys
import subprocess
import os

def clean_step5():
    subprocess.run("rm *_1.txt", shell=True, executable="/bin/bash")
    subprocess.run("rm *_2.txt", shell=True, executable="/bin/bash")
    subprocess.run("rm *_3.txt", shell=True, executable="/bin/bash")
    print("Removed unnecesary text files.")

def clean_genomeID():
    subprocess.run("rm genomes_index_geneID.txt", shell=True, executable="/bin/bash")
    print("Removed genomes index.")