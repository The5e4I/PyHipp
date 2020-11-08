#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=1:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
<<<<<<< HEAD
#SBATCH -J "fsall-slurm.sh"   # job name
=======
#SBATCH -J "fsall"   # job name
>>>>>>> 02ada9543b8256698469dc6f49383ddaab11877e

## /SBATCH -p general # partition (queue)
#SBATCH -o fsall-slurm.%N.%j.out # STDOUT
#SBATCH -e fsall-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
<<<<<<< HEAD
python -u -c "import PyHipp as pyh; import DataProcessingTools as DPT; import time; lfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*', 
'*mountains*'], objtype=pyh.FreqSpectrum, saveLevel=1); lfall.save(); hfall = DPT.objects.processDirs(dirs=None, 
exclude=['*eye*', '*mountains*'], objtype=pyh.FreqSpectrum, loadHighPass=True, pointsPerWindow=3000, 
saveLevel=1); hfall.save(); print(time.localtime());"
=======
python -u -c "import PyHipp as pyh; import DataProcessingTools as DPT; lfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*','*mountains*'], objtype=pyh.FreqSpectrum, saveLevel=1); lfall.save(); hfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*','*mountains*'], objtype=pyh.FreqSpectrum, loadHighPass=True, pointsPerWindow=3000, saveLevel=1); hfall.save();"
>>>>>>> 02ada9543b8256698469dc6f49383ddaab11877e
