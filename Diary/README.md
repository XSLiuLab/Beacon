<!-- 只列出与Liulab分析工作相关日常、其他不要涉及！-->


**目录：**

* TOC
{:toc}

***

## 好用的脚本

### 解压

#### [extract](extract)

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

[**build_links.sh**](build_links.sh)

> by Shixiang Wang
> 
> DATE: 2019-02-25

该数据由`gdc-client`下载。

如果自定义，目前需要修改`OUTPUT`部分。这个脚本是比较粗糙初级的版本，后面的软链接构建脚本是在它基础上完成的。

### 为TCGA全基因组数据构建软链接

[**build_aws_links.sh**](build_aws_links.sh)

> by Shixiang Wang
> 
> DATE: 2019-02-25

该数据由aws客户端下载。

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


