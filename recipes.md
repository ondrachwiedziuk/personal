---
layout: page
title: Recipes
permalink: /recipes/
---

Welcome to my recipe collection! Here you'll find various recipes I've tried and enjoyed.

{% assign sorted_recipes = site.recipes | sort: 'date' | reverse %}
{% for recipe in sorted_recipes %}
  <div class="posts-item">
    <h3><a href="{{ recipe.url | relative_url }}">{{ recipe.title }}</a></h3>
    {% if recipe.date %}
      <p class="posts-date">{{ recipe.date | date: "%B %d, %Y" }}</p>
    {% endif %}
    {% if recipe.excerpt %}
      <p class="posts-excerpt">{{ recipe.excerpt }}</p>
    {% endif %}
  </div>
  <hr class="separator">
{% endfor %}

{% if site.recipes.size == 0 %}
  <p>No recipes yet. Check back soon!</p>
{% endif %}
