#!/bin/bash
# Copy receptor files to use for each ligand with grad.sh (AEScore)

system="Tyk2"
input_dir="../data/${system}"

output_dir="${input_dir}/dummy_recfiles"
mkdir -p "$output_dir"

existing_file="${system}_protein-nhm.pdb"

# Loop over .sdf files in the input directory
for file in "$input_dir"/*ligand*.sdf; do

    filename=$(basename "$file" .sdf)
    new_filename="${filename//ligand/receptor}.pdb"
    echo "Copying $existing_file to $new_filename"
    cp "$input_dir/$existing_file" "$output_dir/$new_filename"

done
