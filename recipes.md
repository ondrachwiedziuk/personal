---
layout: page
title: Recipes
permalink: /recipes/
---

{% comment %}Paginated recipes listing (page 1). Additional pages generated via plugin in _plugins/collection_pagination.rb{% endcomment %}
{% include collection_paginated.html collection_name='recipes' page=1 base_path='/recipes' per_page=15 %}
