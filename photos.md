---
layout: page
title: Photos
permalink: /photos/
---

# Photo Galleries

Explore my photography collections organized by theme and location.

<hr class="separator">

<div class="galleries-grid">
  {%- for gallery in site.galleries -%}
    <div class="gallery-preview">
      <a href="{{ gallery.url | relative_url }}" class="gallery-preview-link">
        {%- if gallery.cover_photo -%}
          <img src="{{ '/assets/photos/thumbnails/' | append: gallery.slug | append: '/' | append: gallery.cover_photo | relative_url }}" 
               alt="{{ gallery.title }}" 
               class="gallery-preview-image"
               loading="lazy">
        {%- endif -%}
        <div class="gallery-preview-info">
          <h3 class="gallery-preview-title">{{ gallery.title }}</h3>
          {%- if gallery.description -%}
            <p class="gallery-preview-description">{{ gallery.description }}</p>
          {%- endif -%}
          {%- if gallery.photos -%}
            <p class="gallery-preview-count">{{ gallery.photos.size }} photos</p>
          {%- endif -%}
        </div>
      </a>
    </div>
  {%- endfor -%}
</div>

{%- if site.galleries.size == 0 -%}
  <p class="no-galleries">No galleries available yet. Check back soon!</p>
{%- endif -%}