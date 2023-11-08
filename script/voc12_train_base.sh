#!/bin/bash

# Tell the system the resources you need. Adjust the numbers according to your need, e.g.
#SBATCH --job-name=voc12_train_base
#SBATCH --mail-user=nhlben@connect.hku.hk
#SBATCH --mail-type=ALL
#SBATCH --output=/userhome/cs2/nhlben/comp7404/project/voc12_base_train_log.txt
#SBATCH --gres=gpu:1

#If you use Anaconda, initialize it
. $HOME/anaconda3/etc/profile.d/conda.sh
conda activate comp7404_project

# cd your your desired directory and execute your program, e.g.
cd /userhome/cs2/nhlben/comp7404/project/PaddleSeg

export CUDA_VISIBLE_DEVICES=0
export PYTHONWARNINGS="ignore"

python tools/train.py \
       --config configs/rtformer/rtformer_base_voc12_512x512_120k.yml \
       --do_eval \
       --use_vdl \
       --save_interval 500 \
       --save_dir output/voc12_base