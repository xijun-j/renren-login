# Renren login plugin for Discourse / Discourse 人人网登录插件

Authenticate with discourse with Renren.

通过人人登录 Discourse。

## Register Client Key & Secert / 申请人人接入

1. 登录[人人开放平台](http://dev.renren.com/website)，注册填写相关信息。
2. 点击`创建应用`。
3. 填写相关信息。`应用根域名`填写根域名。如图所示。
4. 在申请到的后台找到刚申请到的引用，概览中即可以获得`key`和`secret`，将其填入 Discourse 设置中。

<img src="https://meta.discourse.org/uploads/default/34533/ae6314cb61a93301.png" width="458" height="500"> 

## Installation / 安装

Run `rake plugin:install repo=https://github.com/fantasticfears/renren-login` in your discourse directory

In development mode, run `rake assets:clean`

In production, recompile your assets: `rake assets:precompile`

在您 Discourse 目录中运行 `rake plugin:install repo=https://github.com/fantasticfears/renren-login`

在开发者模式下，运行 `rake assets:clean`

在生产模式下，重编译 assets `rake assets:precompile`

## Usage / 使用

Go to Site Settings's login category, fill in the client id and client secret.

进入站点设置的登录分类，填写 client id 和 client serect。

## Issue / 问题

Visit [topic on Discourse Meta](https://meta.discourse.org/t/renren-login-plugin/19747) or [GitHub Issues](https://github.com/fantasticfears/renren-login/issues).

访问[Discourse Meta上的主题](https://meta.discourse.org/t/renren-login-plugin/19747)或[GitHub Issues](https://github.com/fantasticfears/renren-login/issues)。

<img src="https://meta.discourse.org/uploads/default/34534/d837a2a1ef1fcbf3.png" width="690" height="325">

<img src="https://meta.discourse.org/uploads/default/34535/f9d71a6af7263265.png" width="690" height="307">

<img src="https://meta.discourse.org/uploads/default/34536/06c11f5f149450b4.png" width="690" height="326">

<img src="https://meta.discourse.org/uploads/default/34537/2cb707f91db50241.png" width="690" height="312">

## Changelog

Current version: 0.1.0
