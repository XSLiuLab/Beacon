只列出与Liulab分析工作相关日常、其他不要涉及！

1. [好用的脚本](#好用的脚本)
   1. [解压](#解压)
2. [下载组学原始数据](#下载组学原始数据)
   1. [TCGA GDC数据中心](#tcga-gdc数据中心)
   2. [ICGC](#icgc)
   3. [EGA](#ega)
3. [组学数据预处理](#组学数据预处理)
   1. [为GDC组学数据构建软链接](#为gdc组学数据构建软链接)
   2. [为TCGA全基因组数据构建软链接](#为tcga全基因组数据构建软链接)
4. [TCGA数据处理](#tcga数据处理)
   1. [过滤重名Barcode](#过滤重名barcode)
   2. [利用Manifest文件转换TCGA ID](#利用manifest文件转换tcga-id)

***

## 好用的脚本

### 解压

```
#!/bin/bash
# function Extract for common file formats
# https://gist.github.com/ShixiangWang/475352083a6775c03df14271837dd2c8

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f "$1" ] ; then
        NAME=${1%.*}
        #mkdir $NAME && cd $NAME
        case "$1" in
          *.tar.bz2)   tar xvjf ./"$1"    ;;
          *.tar.gz)    tar xvzf ./"$1"    ;;
          *.tar.xz)    tar xvJf ./"$1"    ;;
          *.lzma)      unlzma ./"$1"      ;;
          *.bz2)       bunzip2 ./"$1"     ;;
          *.rar)       unrar x -ad ./"$1" ;;
          *.gz)        gunzip ./"$1"      ;;
          *.tar)       tar xvf ./"$1"     ;;
          *.tbz2)      tar xvjf ./"$1"    ;;
          *.tgz)       tar xvzf ./"$1"    ;;
          *.zip)       unzip ./"$1"       ;;
          *.Z)         uncompress ./"$1"  ;;
          *.7z)        7z x ./"$1"        ;;
          *.xz)        unxz ./"$1"        ;;
          *.exe)       cabextract ./"$1"  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "'$1' - file does not exist"
    fi
fi
}
```

把它放到系统配置文件中，如`~/.bashrc`、`~/.zshrc`等，加入内容

```
source ~/bin/extract
```

文件路径根据自己的设定更改。

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


