data_root=$1
cuda_id=$2

mkdir -p output_minor/
PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
CUDA_VISIBLE_DEVICES=$cuda_id  sgn-train street-gaussians-ns \
    --experiment_name street-gaussians-ns \
    --output_dir output_minor/ \
    --vis viewer+wandb \
    --viewer.quit_on_train_completion True \
    colmap-data-parser-config \
    --data $data_root \
    --colmap_path colmap/sparse/origin \
    --load_3D_points True \
    --max_2D_matches_per_3D_point 0 \
    --undistort True \
    --segments-path segs \
    --filter_camera_id 2 3 \
    --init_points_filename points3D.txt
