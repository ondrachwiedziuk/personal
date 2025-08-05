---
layout: default
title: "Risotto"
date: 2025-08-05
excerpt: "A creamy italian risotto with saffron recipe."
---

## Ingredients

```python
rice = Ingredient("arborio rice", 100, "g")
broth = Ingredient("vegetable broth", 250, "ml")
onion = Ingredient("onion", 50, "g")
garlic = Ingredient("garlic", 1, "clove")
olive_oil = Ingredient("olive oil", 1, "tablespoon")
parmesan = Ingredient("parmesan cheese", 30, "g")
butter = Ingredient("butter", 40, "g")
saffron = Spice("saffron")
```

## Instructions

```python
@recipe
def risotto(servings):
    onion.chop("dice")
    garlic.minced()

    pot = Tool("pot")
    pot.add(olive_oil * servings)
    pot.heat()
    pot.add(onion * servings)
    pot.stir(2, "minutes")
    pot.add(garlic * servings)
    pot.stir(1, "minute")
    pot.add(rice * servings)
    pot.stir(1, "minute")
    pot.add(saffron)

    for _ in range(4):
        pot.add(broth * servings // 4)
        pot.stir(5, "minutes")

    pot.add(parmesan * servings)
    pot.add(butter * servings)

    pot.serve()
```
