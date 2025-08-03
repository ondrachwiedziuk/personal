---
layout: default
title: "Chocolate Chip Cookies"
date: 2025-08-03
categories: [dessert, cookies]
prep_time: "15 minutes"
cook_time: "12 minutes"
servings: "24 cookies"
excerpt: "Classic chocolate chip cookies that are crispy on the outside and chewy on the inside."
---

# {{ page.title }}

These classic chocolate chip cookies are perfect for any occasion. They're crispy on the outside, chewy on the inside, and packed with chocolate chips.

## Ingredients

```python
# Dry ingredients
flour = "2 1/4 cups all-purpose flour"
baking_soda = "1 teaspoon"
salt = "1 teaspoon"

# Wet ingredients
butter = "1 cup (2 sticks) softened butter"
brown_sugar = "3/4 cup packed brown sugar" 
granulated_sugar = "3/4 cup granulated sugar"
vanilla = "2 teaspoons vanilla extract"
eggs = "2 large eggs"

# Mix-ins
chocolate_chips = "2 cups semi-sweet chocolate chips"
```

## Instructions

```python
def make_cookies():
    # Step 1: Preheat and prepare
    oven_temp = 375  # degrees Fahrenheit
    print("Preheat oven to", oven_temp, "°F")
    
    # Step 2: Mix dry ingredients
    dry_ingredients = [flour, baking_soda, salt]
    print("Mix dry ingredients in a bowl")
    
    # Step 3: Cream butter and sugars
    print("Cream butter with both sugars until fluffy")
    
    # Step 4: Add eggs and vanilla
    print("Beat in eggs one at a time, then vanilla")
    
    # Step 5: Combine wet and dry
    print("Gradually mix in dry ingredients")
    
    # Step 6: Add chocolate chips
    print("Fold in chocolate chips")
    
    # Step 7: Bake
    baking_time = 9-11  # minutes
    print(f"Drop spoonfuls on baking sheet, bake {baking_time} minutes")
    
    return "Golden brown cookies!"

# Execute recipe
result = make_cookies()
print(result)
```

## Tips

- Don't overmix the dough after adding flour
- Chill dough for 30 minutes for thicker cookies
- Use room temperature eggs for better mixing
- Store in airtight container for up to 1 week

**Prep Time:** {{ page.prep_time }} | **Cook Time:** {{ page.cook_time }} | **Servings:** {{ page.servings }}