config_path=$1
cuda_id=$2
vehicle_config=$3

CUDA_VISIBLE_DEVICES=$cuda_id sgn-render \
    --load-config $config_path \
    --vehicle-config $vehicle_config