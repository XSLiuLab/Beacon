只列出与癌症研究相关的工具包与数据库，科研效率与管理工具以及它们的手册/教程、其他不要涉及！

<details>
<summary>目录</summary>

1. [研究工具](#研究工具)
   1. [文献管理](#文献管理)
   2. [学术搜索](#学术搜索)
   3. [文献追踪](#文献追踪)
   4. [文档书写](#文档书写)
   5. [科学上网](#科学上网)
   6. [Figure制作与美化](#figure制作与美化)
2. [数据分析与生信软件（包）](#数据分析与生信软件包)
   1. [基础工具](#基础工具)
   2. [数据下载](#数据下载)
   3. [数据分析](#数据分析)
      1. [TCGA](#tcga)
      2. [聚类](#聚类)
      3. [异质性与克隆演化](#异质性与克隆演化)
   4. [绘图与交互](#绘图与交互)
   5. [Web App](#web-app)
3. [数据库](#数据库)
   1. [基础数据库](#基础数据库)
   2. [癌症数据库](#癌症数据库)
   3. [分析数据库](#分析数据库)
   4. [测序项目](#测序项目)
   5. [项目与基金数据库](#项目与基金数据库)
   6. [其他数据库](#其他数据库)
4. [课题组研发工具](#课题组研发工具)
   1. [Li Ding's Lab](#li-dings-lab)

</details>

***

## 研究工具

### 文献管理

* Endnote - 上科大图信中心提供了软件下载
* [Zotero](https://www.zotero.org/) + [坚果云](https://www.jianguoyun.com/s/downloads) - 强推！
  * 如何配置请查看[好物推荐 - 坚果云](https://mp.weixin.qq.com/s/9zY-No1VDSAsRB_XvGPs2Q)中“如何在Zotero中设置webdav连接到坚果云？”一节。
  * Zotero基本介绍请看[文献管理软件Zotero基础及进阶示范](https://www.yangzhiping.com/tech/zotero1.html)，里面也包含了与国外流行云盘Dropbox的连用配置。

### 学术搜索

* [SciHub](http://www.sci-hub.tw/) - [可用网址检测](http://tool.yovisun.com/scihub/) - [SciHub Desktop](https://zhuanlan.zhihu.com/p/31809890)
* [Pubmed](https://www.ncbi.nlm.nih.gov/pubmed/) - [谷歌插件Scholarscope](https://www.scholarscope.cn/) - [Scholarscope介绍](https://mp.weixin.qq.com/s/V4zFGS2J7_gwE6LGKTtSYA)
* [谷歌学术](https://scholar.google.com/)
* [百度学术](http://xueshu.baidu.com/)
* [爱学术搜索](https://www.ixueshu.com/)

### 文献追踪

* [Read by QxMD](https://read.qxmd.com/)
* [文献鸟](https://www.storkapp.me/)

### 文档书写

* [Typora](https://typora.io/) - 便捷的Markdown写作以及各种格式导出
* LaTex - 上科大图信中心有教程
* Word

### 科学上网

* [蓝灯](https://github.com/getlantern/download)
* [XX-Net](https://github.com/XX-net/XX-Net/wiki/%E4%B8%AD%E6%96%87%E6%96%87%E6%A1%A3) - [My AppID](appid)

### Figure制作与美化

* Adobe Photoshop
* Adobe Illustrator
* PPT

三款软件上科大图信中心软件库都有。

虽然掌握好编程可以快速、自定义、批量绘制图形，但有时候不满足出版刊物要求的格式或者需要排版、美化等，上面三款软件都提供了类似的功能。

注意，AI提供的是矢量图制作、Photoshop提供的是位图、而PPT支持两者。

推荐教程：

* 《[生命科学插图从入门到精通 —— Adobe Illustrator使用技巧](https://item.jd.com/12137429.html)》（该书实验室已购买）
* 《[史上最全PPT科研作图教程及素材（第二版）](https://mp.weixin.qq.com/s/3LIqarWQmweQrpCyGUlUbA)》

## 数据分析与生信软件（包）

下面按软件（包）的功能进行划分，基础工具包常提供底层计算和基础的数据分析操作支持，

### 基础工具

* [R](https://www.r-project.org/) - R is a free software environment for statistical computing and graphics. It compiles and runs on a wide variety of UNIX platforms, Windows and MacOS.
* [Bioconductor](https://www.bioconductor.org/) - Bioconductor provides tools for the analysis and comprehension of high-throughput genomic data. Bioconductor uses the R statistical programming language, and is open source and open development. It has two releases each year, and an active user community. 
* [Python](https://www.python.org/) - Python is a programming language that lets you work quickly and integrate systems more effectively.
* [IPython](https://ipython.org/) - IPython provides a rich architecture for interactive computing with:
    * A powerful interactive shell.
    * A kernel for Jupyter.
    * Support for interactive data visualization and use of GUI toolkits.
    * Flexible, embeddable interpreters to load into your own projects.
    * Easy to use, high performance tools for parallel computing.
* [Biopython](https://biopython.org/) - Biopython is a set of freely available tools for biological computation written in [Python](http://www.python.org/) by an international team of developers.
* [Numpy](http://www.numpy.org/) - NumPy is the fundamental package for scientific computing with Python. It contains among other things:
    * a powerful N-dimensional array object
    * sophisticated (broadcasting) functions
    * tools for integrating C/C++ and Fortran code
    * useful linear algebra, Fourier transform, and random number capabilities
* [Pandas](https://pandas.pydata.org/) - pandas is an open source, BSD-licensed library providing high-performance, easy-to-use data structures and data analysis tools for the Python programming language.


### 数据下载

* [UCSCXenaTools](https://github.com/ShixiangWang/UCSCXenaTools) - UCSCXenaTools is a R package download and explore data from UCSC Xena data hubs.
* [TCGAbiolinks](https://github.com/BioinformaticsFMRP/TCGAbiolinks) - An R/Bioconductor package for integrative analysis with TCGA data.
* [GEOquery](https://bioconductor.org/packages/release/bioc/vignettes/GEOquery/inst/doc/GEOquery.html) - Get data from NCBI Gene Expression Omnibus (GEO).

### 数据分析

#### TCGA

* [TCGAbiolinks](https://github.com/BioinformaticsFMRP/TCGAbiolinks) - An R/Bioconductor package for integrative analysis with TCGA data.

#### 聚类

* [Clusternomics](https://github.com/XSLiuLab/clusternomics) - Integrative clustering for heterogeneous biomedical datasets.

#### 异质性与克隆演化

* [sciclone](https://github.com/genome/sciclone) - An R package for inferring the subclonal architecture of tumors
* [pyclone](https://github.com/aroth85/pyclone) - Probabilistic model for inferring clonal population structure from deep NGS sequencing

### 绘图与交互

### Web App



## 数据库

### 基础数据库

* [NCBI](https://www.ncbi.nlm.nih.gov/)
* [EGA](https://ega-archive.org/) - The European Genome-phenome Archive (EGA) is a service for permanent archiving and sharing of all types of personally identifiable genetic and phenotypic data resulting from biomedical research projects.
* [GEO](https://www.ncbi.nlm.nih.gov/geo/)
* [ENCODE](https://www.encodeproject.org/) - Encyclopedia of DNA Elements.
* [GENCODE](https://www.gencodegenes.org/) - The goal of the GENCODE project is to identify and classify all gene features in the human and mouse genomes with high accuracy based on biological evidence, and to release these annotations for the benefit of biomedical research and genome interpretation.
* [Roadmap](http://www.roadmapepigenomics.org/) - The NIH Roadmap Epigenomics Mapping Consortium was launched with the goal of producing a public resource of human epigenomic data to catalyze basic biology and disease-oriented research. The Consortium leverages experimental pipelines built around next-generation sequencing technologies to map DNA methylation, histone modifications, chromatin accessibility and small RNA transcripts in stem cells and primary ex vivo tissues selected to represent the normal counterparts of tissues and organ systems frequently involved in human disease. 
* [IGSR: The International Genome Sample Resource](http://www.internationalgenome.org/home) - Providing ongoing support for the 1000 Genomes Project data.
* [Ensembl](http://asia.ensembl.org/index.html) - Ensembl is a genome browser for vertebrate genomes that supports research in comparative genomics, evolution, sequence variation and transcriptional regulation. Ensembl annotate genes, computes multiple alignments, predicts regulatory function and collects disease data. Ensembl tools include BLAST, BLAT, BioMart and the Variant Effect Predictor (VEP) for all supported species.
* [IEDB](http://www.iedb.org/) - The Immune Epitope Database (IEDB) is a freely available resource funded by NIAID. It catalogs experimental data on antibody and T cell epitopes studied in humans, non-human primates, and other animal species in the context of infectious disease, allergy, autoimmunity and transplantation. The IEDB also hosts tools to assist in the prediction and analysis of epitopes.
* [UniProt](https://www.uniprot.org/) - The mission of UniProt is to provide the scientific community with a comprehensive, high-quality and freely accessible resource of protein sequence and functional information.
* [OMIM](https://omim.org/) - An Online Catalog of Human Genes and Genetic Disorders.
* [Synapse](https://www.synapse.org/) - Synapse is a collaborative, open-source research platform that allows teams to share data, track analyses, and collaborate. 

### 癌症数据库

* [COSMIC](https://cancer.sanger.ac.uk/cosmic) - the Catalogue Of Somatic Mutations In Cancer, is the world's largest and most comprehensive resource for exploring the impact of somatic mutations in human cancer.
* [CCLE](https://portals.broadinstitute.org/ccle) - Cancer Cell Line Encyclopedia. 
* [TCGA GDC](https://portal.gdc.cancer.gov/)
* [ICGC](https://dcc.icgc.org/) - Cancer genomics data sets visualization, analysis and download.
* [UCSC Xena](https://xenabrowser.net/datapages/)
* [Broad Firehose](http://gdac.broadinstitute.org/)
* [cBioPortal](http://www.cbioportal.org/) - The cBioPortal for Cancer Genomics provides visualization, analysis and download of large-scale cancer genomics data sets.
* [TCIA](https://tcia.at/) - The Cancer Immunome Atlas: The Cancer Immunome Database (TCIA) provides results of comprehensive immunogenomic analyses of next generation sequencing data (NGS) data for 20 solid cancers from The Cancer Genome Atlas (TCGA) and other datasources.
* [TSNAdb](http://biopharm.zju.edu.cn/tsnadb/) - TSNAdb is developed based on pan-cancer immunogenomic analyses of somatic mutation data and human leukocyte antigen (HLA) allele information for 16 tumor types with 7748 tumor samples from The Cancer Genome Atlas (TCGA) and The Cancer Immunome Atlas (TCIA). 
* [Tumor Fusion Gene Data Portal](http://tumorfusions.org/) - Landscape of cancer-associated fusions using the Pipeline for RNA sequencing Data Analysis. Transcripts fusion as a result of genomic rearrangement is an important class of somatic alteration, as a cancer initiating event and as a molecular therapeutic target for specific tumors. Our Pipeline for RNA sequencing Data Analysis (PRADA) enables us to detect fusion transcripts with high confidence comprehensively. Based on integrated analysis of paired-end RNA sequencing and DNA copy number data from The Cancer Genome Atlas(TCGA), The Tumor Fusion Gene Data Portal provides a bona-fide fusion list across many tumor types.
* [TSGene](https://bioinfo.uth.edu/TSGene/index.html) - Tumor suppressor gene database.
* [oncogene database](http://ongene.bioinfo-minzhao.org/) - the first literature database for oncogenes.
* 

### 分析数据库

* [The MEME Suite](http://meme-suite.org/index.html) - Motif-based sequence analysis tools.
* [MEXPRESS](https://mexpress.be/) - MEXPRESS is a data visualization tool designed for the easy visualization of TCGA expression, DNA methylation and clinical data, as well as the relationships between them. 
* [ARCHS](https://amp.pharm.mssm.edu/archs4/) - 人鼠RNASeq数据挖掘。
* [GEPIA](http://gepia.cancer-pku.cn/) - Gene Expression Profiling Interactive Analysis. 
* [MiPanda](http://www.mipanda.org/) - Michigan Portal for the Analysis of NGS Data.
* [TIP](http://biocc.hrbmu.edu.cn/TIP/) - Tracking Tumor Immunophenotype.
* [IOExplorer](https://ioexplorer.org/) - An Immune-Oncology data analysis portal brought to you by MSKCC IPOP.
* [CGI](https://www.cancergenomeinterpreter.org/home) - Cancer Genome Interpreter.
* [TIDE](http://tide.dfci.harvard.edu/) - Tumor Immune Dysfunction and Exclusion: TIDE is a gene expression biomarker to predict the clinical response to immune checkpoint blockade.
* [OncoLnc](http://www.oncolnc.org/) - Here you can link TCGA survival data to mRNA, miRNA, or lncRNA expression levels. To get started simply input either a Tier 3 TCGA mRNA, miRNA, or MiTranscriptome beta lncRNA. 

### 测序项目

* [UK Biobank](https://www.ukbiobank.ac.uk/) - UK Biobank is a national and international health resource with unparalleled research opportunities, open to all bona fide health researchers. UK Biobank aims to improve the prevention, diagnosis and treatment of a wide range of serious and life-threatening illnesses – including cancer, heart diseases, stroke, diabetes, arthritis, osteoporosis, eye disorders, depression and forms of dementia. It is following the health and well-being of 500,000 volunteer participants and provides health information, which does not identify them, to approved researchers in the UK and overseas, from academia and industry. 

### 项目与基金数据库

* [CDE Browser](https://cdebrowser.nci.nih.gov/cdebrowserClient/cdeBrowser.html#/search) - NCBI项目查询
* [Keynote](https://keynoteclinicaltrials.com/trials) - Keynote is a series of clinical trials to determine whether an investigational immunotherapy may help in the treatment of cancer. The investigational immunotherapy is pembrolizumab (MK-3475). 

### 其他数据库

* [Codon USage Database](http://www.kazusa.or.jp/codon/)
* [ExAC Browser](http://exac.broadinstitute.org/) - The Exome Aggregation Consortium (ExAC) is a coalition of investigators seeking to aggregate and harmonize exome sequencing data from a wide variety of large-scale sequencing projects, and to make summary data available for the wider scientific community.
* [TANRIC](https://ibl.mdanderson.org/tanric/_design/basic/index.html) - Enable Scientific Distcovery Through ncRNA


## 课题组研发工具

该部分汇总相关课题组及其研发和使用的工具。

### Li Ding's Lab

[Li Ding's Lab at the Washington University School of Medicine](https://github.com/ding-lab)

- [msisensor](https://github.com/ding-lab/msisensor) - microsatellite instability detection using tumor only or paired tumor-normal data
- [MuSiC2](https://github.com/ding-lab/MuSiC2) - identifying mutational significance in cancer genomes
- [gatk4wxscnv](https://github.com/ding-lab/gatk4wxscnv) - Pipeline for WXS CNV using GATK4
- [hotspot3d](https://github.com/ding-lab/hotspot3d) - 3D hotspot mutation proximity analysis tool. This 3D proximity tool can be used to identify mutation hotspots from linear protein sequence and correlate the hotspots with known or potentially interacting domains, mutations, or drugs. Mutation-mutation and mutation-drug clusters can also be identified and viewed.
- [Pindel](https://github.com/genome/pindel) - Pindel can detect breakpoints of large deletions, medium sized insertions, inversions, tandem duplications and other structural variants at single-based resolution from next-gen sequence data. It uses a pattern growth approach to identify the breakpoints of these variants from paired-end short reads.
- [pindel2](https://github.com/ding-lab/pindel2) - Detecting break points of large deletions and medium sized insertions from paired-end short read.
- [queryGDC](https://github.com/ding-lab/queryGDC) - Command line client for Genomic Data Commons graphGL queries
- [importGDC](https://github.com/ding-lab/importGDC) - Command line client for Genomic Data Commons data downloads
- [gdc_qc_analysis](https://github.com/ding-lab/gdc_qc_analysis) - Somatic mutation pipeline comparison of TCGA samples between Genomic Data Commons (GDC) and MC3
- [outlier](https://github.com/ding-lab/outlier) - Outlier analysis module to identify aberrantly highly expressed genes.
- [VariantQC](https://github.com/ding-lab/VariantQC) -  Variant quality checking scripts for complex indel variant discovery and filtering from Pindel-C outputs. Referenced in Systematic discovery of complex insertions and deletions in human cancers (doi:10.1038/nm.4002).
- [cmds](https://github.com/ding-lab/cmds) - Cohort DNA Copy Number Analysis. A population-based method for DNA copy number analysis: recurrent copy number aberration identification in multiple samples (with no need of single-sample calling). Developed for a quick analysis of high resolution and large population data.
- [vcf2maf](https://github.com/mskcc/vcf2maf) - Convert a VCF into a MAF, where each variant is annotated to only one of all possible gene isoforms.
- [parse-cosmic](https://github.com/ckandoth/parse-cosmic) - Script to carefully parse through and standardize somatic variant lists from COSMIC
- 