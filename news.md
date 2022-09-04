---
title: News
layout: default
---
<ul class="news">
{% for record in site.data.news %}
<li class="record">
  <span class="date">{{record.date }}</span>
  <span class="title">{{ record.title }}</span>
  <p class="description">{{ record.description }}</p>
</li>
{% endfor %}
</ul>
  
