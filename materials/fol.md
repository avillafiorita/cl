---
title: First Order Logic
layout: default
---
<h1>First Order Logic</h1>

<blockquote>
  Materials about first order logic are published here.
</blockquote>

{% assign mod_mat = site.data.materials | where: "group", "fol" | group_by: "subgroup" %}
{% for record in mod_mat %}

<h2 class="materials-subgroup">{{ record["name"] }}</h2>

{% for item in record["items"] %}
<h3 class="materials-title">{{ item.title }}</h3>

<div class="materials-description">
   {{ item.description }}<br />
</div>

<div class="materials-link-container">
  <div class="materials-slides-link">
    {% if item.pdf_links %}
    <ul>
      {% for pdf in item.pdf_links %}
      <li>
        <a href="{{ pdf.link }}" style="font-size: 1rem">{{ pdf.title }}</a>
      </li>
      {% endfor %}
    </ul>
    {% endif %}

    {% if item.link %}
    <a href="{{ item.link }}" style="font-size: 1rem">
      <img src="{{ "assets/images/thumbs/slides-thumbnail.jpg" | absolute_url }}"
           class="thumb">
      Slides: {{ item.title }}
    </a>
    {% endif %}
  </div>
  <div class="materials-video-link">
    {% if item.video_link %}
    <a href="{{ item.video_link }}" style="font-size: 1rem">
      <img src="{{ "assets/images/thumbs/video-thumbnail.jpg" | absolute_url }}" class="thumb">
      Video: {{ item.title }}
    </a>
    {% endif %}
  </div>
</div>
{% endfor %}

{% endfor %}

{% include materials_directory.html %}
