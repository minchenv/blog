---
title: 从零建个自己的博客
date: 2022-05-14 05:17:18
tags: ["IT"]
author: minchenv
---

> 从零建一个免费的个人 Blog，其实没那么难。

<!-- more -->

## 用啥？
- Blog 框架：Hexo（[Hexo 官网 | Hexo.io](https://hexo.io/)）
- Blog 托管：Vercel （[Vercel 官网 | vercel.com](https://vercel.com)）

## 环境准备
- 搭载了 Android 系统 的手机
- Termux （可从 [这里](https://f-droid.org/zh_Hans/packages/com.termux/) 下载）
- Github 账号 （[跳转到 Github 注册页面](https://github.com/signup)）
- Vercel 账号 （[跳转到 Vercel 注册页面](https://vercel.com/signup)，注册时需要 Github 账号）

## 安装 Hexo（Blog 框架）
1. ### 配置 Termux
  _（使用 `minchenv-hexo-on-termux` 脚本配置）_
    打开 `Termux` ，将以下命令复制并粘贴到终端，然后运行：
	```bash
	bash <(curl -s -S -L https://minchenv.vercel.app/scripts/minchenv-hexo-on-termux)
	```
	稍等片刻，你的 `Termux` 会自动配置好 Hexo 环境。
	当出现类似于下图所示的文字时，即表明已成功配置 Hexo 环境。
	![Congratulations! Hexo has been successfully installed on your device. ](https://s1.ax1x.com/2022/05/14/O6T5X6.md.png)

2. ### 新建 Blog
在 `Termux` 输入以下命令以新建一个 Blog：
```bash
hexo init <YourBlogName>
```
执行命令后，hexo-cli 会自动帮你建造一个名为 `<YourBlogName>` 的文件夹。
执行下列命令启动 hexo 的预览，并在浏览器里进行预览：
```bash
cd <YourBlogName>
hexo s -o
```
若一切安好，将会出现如下的输出并自动打开浏览器：
输出：
![OgD158.md.png](https://s1.ax1x.com/2022/05/15/OgD158.md.png)

{% note guide::想要结束预览？在 `Termux` 中按 <kbd>Ctrl</kbd> + <kbd>C</kbd> 以结束预览。 %}

3. ### 配置 Blog
{% noteblock::"提示" %}

考虑到你可能对 `Hexo` 不熟悉，所以此处仅更改 `title` 、`description` 、`language` 、`url` 等基本属性。

想要了解更多？点下面的链接以跳转到 Hexo 官方文档。
{% link "配置 | Hexo.io"::"https://hexo.io/zh-cn/docs/configuration" %}

{% endnoteblock %}

在 `Termux` 中执行以下命令：
```bash
# 请在博客目录下执行！
nano _config.yml
```
根据这个表格对其做出更改：

| 名字        | 解释                                            | 原值                   |
| :----:      | :---:                                           | :---:                  |
| title       | Blog 的标题                                      | Hexo                   |
| description | Blog 的描述                                      | ''                     |
| author      | Blog 的作者（默认作者）                          | 'John Doe'             |
| language    | Blog 的语言（主题根据此渲染页面的部分或全部字段）| 'en'                   |
| url         | Blog 的地址                                      | 'https://example.com/' |

{% note info::"不会退出 `nano` ？按 <kbd>Ctrl</kbd> + <kbd>X</kbd>，并输入 `y` 以保存及退出。" %}

## 新建一篇文章

在 `Termux` 中输入如下命令：

```bash
# 请在博客目录下执行！
hexo new post <title>
```

此时会自动新建一篇文件名为 `<title>.md` 的文章，其位于 `<YourBlogName>/source/_posts/` 下。

然后，打开它，使用 `Markdown` 进行书写。

什么？你不会 `Markdown` ？

{% link "Markdown 教程 | Github"::"https://guides.github.com/features/mastering-markdown/" %}

{% note todo red::"没写完啊啊啊啊啊啊啊啊啊啊啊啊啊" %}
