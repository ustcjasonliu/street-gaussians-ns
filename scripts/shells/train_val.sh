input_dir=data/minor
for d in $input_dir/tfrecord_validation/*
do
    dir_name=$(basename "$d")
    echo "Subdirectory: $dir_name"
    bash scripts/shells/train.sh $input_dir/tfrecord_validation/$dir_name 3
done
