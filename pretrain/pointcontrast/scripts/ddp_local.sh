# Copyright (c) Facebook, Inc. and its affiliates.
#  
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

#!/bin/bash

export OUT_DIR=./tmp_out_dir

python ddp_train.py \
	net.model=MinkUNet \
	net.conv1_kernel_size=4 \
	opt.lr=0.1 \
        opt.max_iter=571200 \
	data.dataset=ScanNetMatchPairDataset \
	data.voxel_size=0.05 \
	trainer.batch_size=4 \
        trainer.stat_freq=1 \
        trainer.lr_update_freq=250 \
	misc.num_gpus=1 \
        misc.npos=4096 \
        misc.nceT=0.4 \
	misc.out_dir=${OUT_DIR} \
	trainer.trainer=HardestContrastiveLossTrainer \
        data.dataset_root_dir=/home/PointContrast/Datasets/PointContrastSemKITTI/data_odometry_velodyne/dataset/point_contrast_seq \
        data.scannet_match_dir=overlaps_semkitti.txt \
	#trainer.trainer=PointNCELossTrainer \
