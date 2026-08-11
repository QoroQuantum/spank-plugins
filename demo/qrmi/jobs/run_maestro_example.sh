#!/bin/bash

#SBATCH --job-name=maestro_local_job
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --qpu=local_maestro

# Your script goes here
source /shared/pyenv/bin/activate
srun python /shared/qrmi/examples/qrmi/python/maestro_local/example.py \
  --backend local_maestro \
  --job-type execute \
  --qubits 3 \
  ghz.qasm
