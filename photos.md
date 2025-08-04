---
layout: page
title: Photos
permalink: /photos/
---

Welcome to my photo gallery collection! Here you'll find various photo galleries organized by theme and location.

{% assign sorted_galleries = site.galleries | sort: 'date' | reverse %}
{% for gallery in sorted_galleries %}
  <div class="posts-item">
    <h3><a href="{{ gallery.url | relative_url }}">{{ gallery.title }}</a></h3>
    {% if gallery.date %}
      <p class="posts-date">{{ gallery.date | date: "%B %d, %Y" }}</p>
    {% endif %}
    {% if gallery.description %}
      <p class="posts-description">{{ gallery.description }}</p>
    {% endif %}
    {% if gallery.photos %}
      <p class="posts-photo-count">{{ gallery.photos.size }} photos</p>
    {% endif %}
  </div>
  <hr class="separator">
{% endfor %}

{% if site.galleries.size == 0 %}
  <p>No galleries yet. Check back soon!</p>
{% endif %}