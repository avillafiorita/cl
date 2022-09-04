---
title: News
layout: default
---
# News

<ul class="news">
{% for record in site.data.news %}
<li class="news-item">
  <span class="news-summary-date">{{ record.date | date_to_string: "ordinal", "US"  }}</span>
  <span class="news-summary-title">{{ record.title }}</span>
  <div class="news-summary-description">{{ record.description }}</div>
</li>
{% endfor %}
</ul>
  
