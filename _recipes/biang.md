---
layout: default
title: "Biang Biang Noodles"
date: 2025-08-11
excerpt: "Biang Biang Noodles are a type of Chinese noodle known for their wide, thick shape and chewy texture."
---

## Ingredients

```python
flour = Ingredient("flour", 125, "g")
water = Ingredient("water", 60, "ml")
salt = Ingredient("salt", 0.125, "teaspoon")
oil = Ingredient("sunflower oil", 0.5, "tablespoon")

garlic = Ingredient("minced garlic", 1, "teaspoon")
scallions = Ingredient("scallions", 50, "g")
light_soy = Ingredient("light soy sauce", 1, "tablespoon")
dark_soy = Ingredient("dark soy sauce", 1, "tablespoon")
oil2 = Ingredient("sunflower oil", 1, "tablespoon")
salt2 = Spice("salt")
chilli = Spice("chili flakes")
sichuan = Spice("Sichuan pepper")

bok_choy = Ingredient("bok choy", 100, "g")
```

## Instructions

```python
@recipe
def biang_biang_noodles(servings):
    def noodles(servings):
        bowl = Tool("bowl")
        bowl.add(flour * servings)
        bowl.add(water * servings)
        bowl.add(salt2 * servings)
        bowl.mix()
        dough = bowl.knead().contents
        dough.roll()
        dough.cut("width: 2cm")
        pot = Tool("pot")
        pot.add_water(2, "liters")
        pot.boil()
        pot.add(dough)
        pot.cook(1, "minutes")
        return pot.contents

    def sauce(servings):
        pan = Tool("pan")
        pan.add(oil2 * servings)
        pan.heat()
        pan.add(garlic * servings)
        pan.add(scallions * servings)
        pan.add(sichuan * servings)
        pan.add(chilli * servings)
        pan.add(salt2 * servings)
        pan.stir_fry(2, "minutes")
        pan.add(light_soy * servings)
        pan.add(dark_soy * servings)
        pan.boil(2, "minutes")
        return pan.contents

    def steamed_bok_choy(servings):
        steamer = Tool("steamer")
        steamer.add_water(1, "liter")
        steamer.boil()
        steamer.add(bok_choy * servings)
        steamer.steam(5, "minutes")
        return steamer.contents

    return noodles(servings), sauce(servings), steamed_bok_choy(servings)
```
