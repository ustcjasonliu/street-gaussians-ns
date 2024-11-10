source_dir=output_minor/street-gaussians-ns/street-gaussians-ns
nvs_model_dir=scripts/shells/multi_nvs
for source_scene_dir in $source_dir/*
do
    echo "source_scene_dir $source_scene_dir"
    source_scene_dir_name=$(basename "$source_scene_dir")
    echo "source_scene_dir_name: $source_scene_dir_name "
    for nvs_param_file in $nvs_model_dir/*
    do
        echo "source_scene_dir $nvs_param_file"
        nvs_param_file_name=$(basename "$nvs_param_file")
        nvs_param="$(basename "$nvs_param_file_name" .json)" 
        echo "nvs_param_file_name: $nvs_param_file_name "
        echo "nvs_param: $nvs_param "
        bash scripts/shells/render.sh $source_scene_dir/config.yml 1 $nvs_param_file $source_scene_dir/renders_$nvs_param/
    done
done