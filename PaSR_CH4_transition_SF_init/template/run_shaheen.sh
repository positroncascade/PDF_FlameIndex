#!/bin/bash
#SBATCH -A k1242
#SBATCH -J @JOBNAME@
#SBATCH -n 1
#SBATCH -t 3-00:00:00
#SBATCH -e job%J.err
#SBATCH -o job%J.out
#SBATCH -p workq

OMP_NUM_THREADS=1

srun --hint=nomultithread PaSR_PPF_MIX
