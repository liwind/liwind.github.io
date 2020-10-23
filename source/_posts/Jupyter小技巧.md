---
title: Jupyter小技巧
mathjax: true
categories:
  - Python
tags:
  - Jupyter
date: 2019-12-12 16:56:37
---

Jupyter使用过程中的技巧记录

<!--more-->

## 1 numpy数组显示方式
numpy数组显示时不用科学计数法显示，而是显示全部数字。<br>
只需要导入numpy后添加如下设置：
```python
np.set_printoptions(suppress=True)
```

## 2 matplotlib在jupyter中内嵌显示

只需要导入matplotlib后添加如下魔术命令：
```python
%matplotlib inline
```

