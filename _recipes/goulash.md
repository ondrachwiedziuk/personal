---
layout: default
title: "Goulash"
date: 2025-08-05
excerpt: "Unusual recipe for czech traditional dish."
---

## Ingredients

```python
onion = Ingredient("onion", 150, "g")
meat = Ingredient("beef meat", 150, "g")
tomato = Ingredient("tomato paste", 6, "g")
lard = Ingredient("lard", 10, "g")
paprika = Spice("smoked paprika")
juniper = Spice("juniper")
salt = Spice("salt")
tea = Spice("tea")
```

## Instructions

```python
@recipe
def goulash(servings):
    onion.chop("dice")
    meat.cut("cubes")

    pot = Tool("pot")
    tea.boil(100 * servings, "ml")
    pot.add(lard * servings)
    pot.heat()
    pot.add(onion * servings)
    pot.stir(5, "minutes")
    pot.add(meat * servings)
    pot.stir(2, "minutes")
    pot.add(tomato * servings, paprika, juniper, salt)
    pot.add(tea)
    pot.simmer(60, "minutes")

    return pot.contents
```
