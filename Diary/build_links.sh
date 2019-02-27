#!/bin/bash
# FUN: build softlinks for GDC WES data

# The first option should be location of manifest file
ref_file=$1
# The second option should be location of output links
output=$2

if [ ! -f $ref_file ]
then 
        echo "The first argument is not a valid file."
        exit
fi

if [ ! -d $output ]
then
        echo "Output directory does not exist, try creating it..."
        mkdir -p $output
fi

echo "Outputting soft links to directory $output"

tail -n +2 $ref_file |\
awk -v OUTPUT=$output 'BEGIN{OFS="\t";}{info=$2; gsub(/\.bam/,"",info); system("ln -s /public/home/liuxs/biodata/gdc/wes/"$1"/"info".bam "OUTPUT"/"info".bam &&  ln -s /public/home/liuxs/biodata/gdc/wes/"$1"/"info".bai "OUTPUT"/"info".bai")}'

echo "Done."
exit