只列出与Liulab分析工作相关日常、其他不要涉及！

1. [下载组学原始数据](#下载组学原始数据)
   1. [TCGA GDC数据中心](#tcga-gdc数据中心)
   2. [ICGC](#icgc)
   3. [EGA](#ega)
2. [组学数据预处理](#组学数据预处理)
   1. [为GDC组学数据构建软链接](#为gdc组学数据构建软链接)
   2. [为TCGA全基因组数据构建软链接](#为tcga全基因组数据构建软链接)
3. [TCGA数据处理](#tcga数据处理)
   1. [过滤重名Barcode](#过滤重名barcode)
   2. [利用Manifest文件转换TCGA ID](#利用manifest文件转换tcga-id)

***

## 下载组学原始数据

### TCGA GDC数据中心

### ICGC

### EGA


## 组学数据预处理

### 为GDC组学数据构建软链接

> by Shixiang Wang
> DATE: 2019-02-25

该数据由`gdc-client`下载。

如果自定义，目前需要修改`OUTPUT`部分。

```shell
$ cat build_links.sh 
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

```

### 为TCGA全基因组数据构建软链接

> by Shixiang Wang
> DATE: 2019-02-25

该数据由aws客户端下载。

```shell
$ cat build_aws_links.sh 
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
```

一个使用示例：

```
./build_aws_links.sh ../repository_us-prad-wgs.tsv ~/biodata/icgc/prad-us/ ./PCAWG_TCGA_PRAD
```

## TCGA数据处理

### 过滤重名Barcode

> by Shixiang Wang

Github链接：<https://github.com/ShixiangWang/Scripts/blob/master/TCGA_operation.R>

### 利用Manifest文件转换TCGA ID

> by Shixiang Wang

Github链接：<https://github.com/ShixiangWang/Scripts/blob/master/TCGA_operation.R>


