#!/bin/bash
# FUN: build softlinks for ICGC WGS data (which download by aws client)

# The first option should be location of repository tsv file
ref_file=$1
# The second option should be directory location of raw bam files, must use absolute path
raw_dir=$2
# The third option should be location of output links
output=$3

if [ ! -f $ref_file ]
then 
        echo "The first argument is not a valid file."
        exit
fi

if [ ! -d $raw_dir ] 
then
        echo "Directory store AWS bam raw files does not exist"
        exit
fi

if [ ! -d $output ]
then
        echo "Output directory does not exist, try creating it..."
        mkdir -p $output
fi

echo "Outputting soft links to directory $output"

tail -n +2 $ref_file |\
awk -v OUTPUT=$output -v RAW_DIR=$raw_dir 'BEGIN{OFS="\t";}{info=$3;type=$7;gsub(/ .*/,"",type);system("ln -s "RAW_DIR"/"info" "OUTPUT"/"$5"_"type".bam")}'

echo "Done."
exit