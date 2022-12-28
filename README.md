# PPF复现

该仓库为2019 ISCA 论文“Perceptron-based Prefetch Filtering”的复现代码，本仓库根据源开源代码进行复现，并进行了优化尝试。原开源代码链接：[PPF_Paper_Source_Code](https://github.com/eshanbhatia22/PPF_Paper_Source_Code)



# 复现

根据源开源仓库中的步骤进行操作即可完成论文的复现工作。



# 优化

修改添加源文件

```
添加/prefetcher/spp_dev_zhu_1.l2c_pref文件，其中修改PERCEPTRON::perc_predict和PERCEPTRON::perc_update函数具体实现。

添加/inc/spp_dev_zhu.h 文件，修改原始PPF感知机类的设置

编译优化后的可执行文件/bin/perceptron-no-spp_dev_zhu_1-lru-1core
```



添加实验脚本

```
新增/scripts/PPF_zhu_remake.sh 用于复现源代码
新增/scripts/PPF_zhu_dev.sh 用于测试优化后的代码
```



# TRACE

复现中所使用的trace由于体积太大，此处提供下载链接为：[Directory Tree](https://dpc3.compas.cs.stonybrook.edu/champsim-traces/speccpu/)

使用的trace样例名称如下：

```
603.bwaves_s-1080B
605.mcf_s-1152B
607.cactuBSSN_s-2421B
623.xalancbmk_s-10B
649.fotonik3d_s-10881B
```

