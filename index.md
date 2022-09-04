---
title: Welcome
layout: default
---
<img src="{{ "assets/images/newlogo_unitn_en.png" | absolute_url}}"
     alt="UNITN Logo"
     class="hide-for-small">

Welcome to the homepage of the Fall 2022 Edition of Computational Logic,
course of the Computer Science degree at the University of Trento!

This edition is taught by:

{% include teachers.html %}

On this website you can find the following information:

{% for menu in site.data.menus %}
-   [{{menu.title}}]({{menu.link}})
{% endfor %}

> This website is built with [Jekyll](https://jekyllrb.com). You can
> clone the sources of this website at any time to get a local copy
> running on your computer.  Do not hesitate and get in touch should
> you need support on the matter. The repository is available at the
> following link: [cl-2022](https://github.com/avillafiorita/cl-2022).

