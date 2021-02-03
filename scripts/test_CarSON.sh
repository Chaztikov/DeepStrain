set -ex
# models
RESULTS_DIR='./results/sample_data'
CARSON_PATH='./pretrained_models/carson_Jan2021.h5'
CARMEN_PATH='./pretrained_models/carmen_Jan2021.h5'

# dataset
CLASS='sample_data'
FORMAT='NIFTI'

# command
CUDA_VISIBLE_DEVICES=${GPU_ID} python ./test.py \
  --dataroot ./datasets/${CLASS} \
  --dataformat ${FORMAT} \
  --results_dir ${RESULTS_DIR} \
  --pretrained_models_netS ${CARSON_PATH} \
  --pretrained_models_netME ${CARMEN_PATH} 