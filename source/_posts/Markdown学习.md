---
title: Markdown学习
mathjax: true
categories:
  - 工具学习
tags:
  - Markdown
date: 2019-11-04 16:32:54
---

# 1 简介
Markdown是一种纯文本格式的标记语言，通过简单的标记语法，他可以使普通文本内容具有一定的格式。特点是易读，易写，易更改。Markdown也可以理解为将以 MARKDOWN语法编写的语言转换成HTML内容的工具。

Markdown支持的HTML元素，不在Markdown涵盖范围之内的标签，都可以直接在文档里面用HTML撰写。

<!--more-->

# 2 标题
语法：` # 标题文字 `  
几个#号就是几级标题，支持六级标题（Markdown 段落没有特殊的格式，直接编写文字就好）<br>
示例：

```markdown
# 这是一级标题
## 这是二级标题
### 这是三级标题
#### 这是四级标题
##### 这是五级标题
###### 这是六级标题
```

效果：<br>
{% asset_img title_example.png %}

# 3 字体

## 3.1 加粗
要加粗的文字左右分别用两个**包起来<br>
示例：

```markdown
**这是加粗的文字**
```
效果：**这是加粗的文字**

## 3.2 斜体

要倾斜的文字左右分别用一个*包起来<br>
示例：

```markdown
*这是倾斜的文字*
```
效果：*这是倾斜的文字*

## 3.3 斜体加粗
要倾斜加粗的文字左右分别用三个*包起来<br>
示例：
```markdown
***这是倾斜加粗的文字***
```
效果：***这是倾斜加粗的文字***

## 3.4 删除线
要加删除线的文字左右分别用两个~号包起来<br>
示例：
```markdown
~~这是加删除线的文字~~
```
效果：~~这是加删除线的文字~~

# 4 特殊字符
## 4.1 空格
多个空格子表示一个空格。<br>
使用标签：普通空格`&nbsp;`，半角空格`&ensp;`，全角空格`&emsp;`<br>
示例：`句子1 句子2  句子3&nbsp;&nbsp;&nbsp;句子4`<br>
效果：句子1 句子2  句子3&nbsp;&nbsp;&nbsp;句子4

## 4.2 换行
在上一段后至少空两格在回车来实现回车，或使用HTML标签`<br>`代表回车换行<br>
示例：
```markdown
第一段<br>
第二段  
第三段
```

效果：<br>
第一段<br>
第二段  
第三段

## 4.3 空行
空一行使用两个`<br>`标签（回车）实现，直接空一行的话只是一个大的行间距并没有实际空一行<br>
示例：
```markdown
第一行

第二行<br><br>
第三行
```

效果：<br>
第一行

第二行<br><br>
第三行

## 4.4 分割线
三个或三个以上的-、*、_都可以<br>
示例：
```markdown
---
***
___
```

效果：<br>

---
***
___

# 5 引用
在引用的文字前加>号即可。引用也可以嵌套，如两个>>、三个...<br>
示例：
```markdown
> 这是引用的内容1
>> 这是引用的内容2
>>> 这是引用的内容3
```

效果：<br>
> 这是引用的内容1
> > 这是引用的内容2
> >
> > > 这是引用的内容3

# 6 代码
## 6.1 单行代码段
行内代码段用一个反引号包起来<br>
示例：
```markdown
后面是代码 `short code`
```
效果：后面是代码 `short code`

## 6.2 多行代码块
空一行后继续使用一个Tab缩进或4个空格后面的代码为代码块。<br>
或将代码块用三个反引号包起来，且两边的反引号单独占一行，开头反引号后面可以加上代码类型(c,c++,java,python等)以提供相应高亮效果。<br>
示例:
````markdown
```cpp
func main(int argc, char** argv[]){
   print("hello world");
}
```
````

效果：
```cpp
func main(int argc, char** argv[]){
    print("hello world");
}
```

# 7 超链接
语法：
```markdown
[超链接名](超链接地址 "超链接title")
title可加可不加,title表示鼠标停在上面时显示的标题
```

示例：`[GitHub](https://github.com/) [liwind](https://liwind.github.io/ "liwind's blog")`<br>
效果：[GitHub](https://github.com/) [liwind](https://liwind.github.io/ "liwind's blog")

# 8 图片
语法：
```markdown
![图片名称\](超链接地址 "图片title")`
title可加可不加,title表示鼠标停在上面时显示的标题
```

示例:
```
![GitHub](https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png "GitHub logo")
```

效果：  
![GitHub](https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png "GitHub logo")

# 9 列表
## 9.1 无序列表
列表内容前加-、+或*中的一种（再加空格）<br>
示例：
```markdown
- 第一项
+ 第二项
* 第三项
```

效果：
- 第一项
+ 第二项
* 第三项

## 9.2 有序列表
使用数字后加点表示有序列表（再加空格）<br>
示例：
```markdown
1. 第一项
2. 第二项
3. 第三项
```

效果：
1. 第一项
2. 第二项
3. 第三项

## 9.3 列表嵌套
子列表项前添加至少3个空格<br>
示例：
```markdown
- 1
   - 1.1
- 2
   - 2.1
```

效果：
- 1
   - 1.1
- 2
   - 2.1

# 10 表格
语法：
```markdown
|表头|表头|表头|
|---|:--:|---:|
|内容|内容|内容|
|内容|内容|内容|

第二行--|分割表头和内容。- 有一个就行，为了对齐，多加了几个。
文字默认居左，两边加:表示文字居中，右边加:表示文字居右。
```

示例：
```markdown
|用户姓名|独特技能|辈分排行|
|---|:-:|--:|
|刘备|哭|大哥|
|关羽|打|二哥|
|张飞|骂|三弟|
```

效果：

|用户姓名|独特技能|辈分排行|
|---|:-:|--:|
|刘备|哭|大哥|
|关羽|打|二哥|
|张飞|骂|三弟|

# 11 数学公式
语法：Markdown支持LaTeX公式语法

## 11.1 行内公式

`$公式内容$`<br>
示例：等差数列求和：
```latex
$\sum_{i=1}^n a_i = \frac{(a_0+a_n) \times n}{2}$
```
效果：等差数列求和：$\sum_{i=1}^n a_i = \frac{(a_0+a_n) \times n}{2}$

## 11.2 独行公式
`$$公式内容$$`<br>
示例：
```latex
$$\sum_{i=1}^n a_i = \frac{(a_0+a_n) \times n}{2}$$
```

效果：
$$\sum_{i=1}^n a_i = \frac{(a_0+a_n) \times n}{2}$$