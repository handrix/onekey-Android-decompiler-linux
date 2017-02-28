一键反编译apk-linux版本
=====
#### 前言
首先，这个项目只是整合了一些好用的工具而已，为了使用方便才撰写了shell，其次本人shell玩的
不是很溜，如果有可以改进的地方欢迎随时指正。

#### 撰写背景
今天刚好有有反编译apk这个需求，但在github上搜了下，这种一键式的项目几乎都是for windows的
，作为常年使用linux系统的我当然不能忍，于是写了几行sh命令自己做了一个。

#### 使用方法

把apk文件放入apks文件夹（目前只能放一个），然后运行`./onekey-decompiler.sh`,反编译结果在
decompiler-result文件夹体现

#### 可能的一些坑
如果因为权限问题报错就提权限
```
chmod +x XXX.sh
```
还报错就：
```
chmod 777 XXX.sh
```

####使用工具出处

- [cfr](http://www.benf.org/other/cfr/)： 用于反编译jar
- [dex2jar](http://www.softpedia.com/get/Programming/Other-Programming-Files/dex2jar.shtml)： 用于生成jar文件
