#!/bin/bash

#SBATCH -J task2_part2 # name for job array
#SBATCH -o task2_part2.out #Standard output
#SBATCH -e task2_part2.err #Standard error
#SBATCH -p stats #Partition
#SBATCH -t 20 #Running time of 60 mins
#SBATCH --mem-per-cpu 3000 #Memory Request
#SBATCH -n 1 # Number of cores
#SBATCH -N 1 # All cores on one machine
#SBATCH --mail-type=END #Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=yekuang@g.harvard.edu #Email to be sent

# first arg = number of data to simulate
Rscript ykuang_ps3_task2_part2.R 100000 $SLURM_ARRAY_TASK_ID