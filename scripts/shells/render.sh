config_path=$1
cuda_id=$2
vehicle_config=$3
output_path=$4

CUDA_VISIBLE_DEVICES=$cuda_id sgn-render \
    --load-config $config_path \
    --vehicle-config $vehicle_config \
    --output_path $output_path