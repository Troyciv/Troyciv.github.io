---
layout: post
title:  "Setting up a static website with Jekyll"
date: 2017-12-01 
categories: jekyll linux
---

[Jekyll](https://jekyllrb.com/) is the most popular static web-page generator out there.
It takes your content, written in markdown, some config-files and creates html and css files.
No database, no other bs. Clean and simple.

This is a short tutorial on how to get it up and running.

### Installation

First we need to install ruby, the programming language jekyll is built upon.

```shell
sudo apt install ruby ruby-dev rubygem
```

Rubygem, or simply gem, is a packet manager for ruby, similar to apt for debian based linux distributions or pip for python packages.

Now we want to allow us, the non-privileged user, to install ruby gems without sudo. Therefore we set gem to ``--user-install``.

```shell
echo "gem: --user-install" >> ~/.gemrc
```

We also have to make sure to add the gem binary directory to our PATH. Add this to your ``.profile``

```shell
for dir in $HOME/.gem/ruby/*; do
    [ -d "$dir/bin" ] && PATH="${dir}/bin:${PATH}"
done
```

In order to avoid logging out and in again we source the ``.profile`` with

```shell
source ~/.profile
```

Now we can install jekyll with its dependencies

```shell
gem install bundler jekyll
```
    
Bundler is another package manager that takes care and satisfies eventual dependencies in our projects.

Because Bundler might want to install some gems as dependencies we have to adjust the default installation directory for bundler similar to the rubygem configuration.

```shell
export "GEM_HOME=$HOME/.gem" >> ~/.bash-profile
```


Whenever you use gem or bundler to install ruby gems it should install them in ~/.gem from now on.
If one of them still asks you for sudo rights something went wrong.

You can check your current jekyll version with:

```shell
jekyll -v
```

Update jekyll with:

```shell
bundler update jekyll
```

### Create a new project

Finally, everything is installed and configured.
Time to create your new website.

Create a new project with

```shell
jekyll new my-new-project
```

change into the new directory and build the website for test purposes

```shell
cd my-new-project
bundle exec jekyll serve
```

open your browser and go to

```shell
localhost:4000
```

Congratulations you've successfully set up your first static webpage with jekyll.

Of course this is not the end of it.
In the next post I will explain how to create a new post for your brand new blog. See you there.
