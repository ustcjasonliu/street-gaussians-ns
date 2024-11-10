output_dir=data/minor 
# python scripts/pythons/extract_waymo.py --specify_segments_file scripts/pythons/minor.txt --waymo_root /mnt/cfs/datasets/waymo/waymo-tfrecord/tfrecord_training --out_root $output_dir
for d in $output_dir/tfrecord_validation/*
do
  dir_name=$(basename "$d")
  echo "Subdirectory: $dir_name"
  sh scripts/shells/data_process.sh $output_dir/tfrecord_validation/$dir_name
done
