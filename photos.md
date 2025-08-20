---
layout: page
title: Photos
permalink: /photos/
---

{% comment %}Paginated galleries listing (page 1). Additional pages generated via plugin in _plugins/collection_pagination.rb{% endcomment %}
{% include collection_paginated.html collection_name='galleries' page=1 base_path='/photos' per_page=15 %}