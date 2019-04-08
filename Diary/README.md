<!-- 只列出与Liulab分析工作相关日常、其他不要涉及！-->


**目录：**

* TOC
{:toc}

***

## 实验室分析平台

为了充分利用实验室的计算资源，目前将所有的基础的计算和分析任务转向实验室的服务器，以校园网静态ip地址<http://10.19.24.165>，构建了2个主要的分析平台：RStudio-Server以及Jupyter Notebook。这可以减少对成员本地计算机的依赖。一些需要的数据、软件包都统一存储、安装和使用。

> 大型的数据计算任务则使用学校高性能计算平台

浏览器推荐使用谷歌浏览器。

- RStudio-Server请在浏览器输入<http://10.19.24.165:8787/>，然后用用户名与密码登录。主要用于R计算分析。
- Jupyter-Notebook请在浏览器输入<http://10.19.24.165:8000/>，然后用户名与密码登录。主要用于Python计算分析。

关于两个软件的使用请自查网络资料。新手推荐使用RStudio并通过创建Project来管理分析项目，安装软件请先请教他人。除了使用个人家目录，公共数据、软件和公开的分析笔记等请存储到/public目录下，该项目有说明文档，请阅读一下。

目前开通的账号：

- liuxs
- wx
- lhm
- wsx

初始密码为123，在终端中键入`passwd`即可修改密码。


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


