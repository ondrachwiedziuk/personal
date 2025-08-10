---
layout: default
title: "Minced Garlic"
date: 2025-08-10
excerpt: "A simple guide to preparing minced garlic."
---

## Ingredients

```python
garlic = Ingredient("garlic", 1, "kg")
oil = Ingredient("olive oil", 0.2, "l")
salt = Ingredient("salt", 3, "teaspoon")
```

## Instructions

```python
@recipe
def minced_garlic(servings):
    garlic.peel()

    blender = Tool("blender")
    blender.add(garlic)
    blender.add(oil)
    blender.add(salt)
    blender.blend(10, "seconds")

    return blender.contents
```
