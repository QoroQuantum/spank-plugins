#!/bin/bash

#SBATCH --job-name=maestro_local_task_runner_job
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --qpu=local_maestro

# Your script goes here
source /shared/pyenv/bin/activate
srun task_runner local_maestro /shared/spank-plugins/demo/qrmi/jobs/task_runner_ghz_maestro_local.json
