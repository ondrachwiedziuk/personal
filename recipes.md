---
layout: page
title: Recipes
permalink: /recipes/
---

Here you can find some of my recipes, written as Python code snippets. You can run these snippets to compute the amount of ingredients needed for the number of servings you want to cook. This feature is still in progress, but I hope you will find it useful once it's fully implemented.

{% comment %}Paginated recipes listing (page 1). Additional pages generated via plugin in _plugins/collection_pagination.rb{% endcomment %}
{% include collection_paginated.html collection_name='recipes' page=1 base_path='/recipes' per_page=15 %}
