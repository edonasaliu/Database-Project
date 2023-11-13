# Query Results for Recipe Recommendation and Meal Planning App

## Q1: Preferred Cuisine Recipes

- **Expected Result**: Retrieves recipes of the preferred cuisine (Italian) for user 1.
- **Sample Output**:
  - Spaghetti Bolognese, Italian, 30

## Q2: Recipe Ingredients

- **Expected Result**: Retrieves all ingredients for recipe 1 (Spaghetti Bolognese).
- **Sample Output**:
  - Spaghetti, 200, g
  - Minced Beef, 150, g
  - Tomato Sauce, 100, ml

## Q3: User Meal Plans

- **Expected Result**: Retrieves all meal plans for user 1 from '2023-10-10' to '2023-10-15'.
- **Sample Output**:
  - Spaghetti Bolognese, 2023-10-10
  - Chicken Curry, 2023-10-11

## Q4: Recipes Without Specific Ingredient

- **Expected Result**: Retrieves recipes that do not contain 'Chicken'.
- **Sample Output**:
  - Spaghetti Bolognese
  - Vegetable Stir Fry

## Q5: Users With Specific Recipe in Meal Plan

- **Expected Result**: Retrieves users who have recipe 2 (Chicken Curry) in their meal plan.
- **Sample Output**:
  - CookMaster, cookmaster@example.com