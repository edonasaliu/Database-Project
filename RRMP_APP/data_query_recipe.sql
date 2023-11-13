-- data_query_recipe.sql

-- Q1: Retrieve all recipes of a preferred cuisine for a user
SELECT RecipeName, CuisineType, PreparationTime
FROM Recipes
JOIN UserPreferences ON Recipes.CuisineType = UserPreferences.PreferredCuisine
WHERE UserPreferences.UserID = 1;

-- Q2: Retrieve all ingredients for a specific recipe
SELECT IngredientName, Quantity, Unit
FROM RecipeIngredients
JOIN Ingredients ON RecipeIngredients.IngredientID = Ingredients.IngredientID
WHERE RecipeIngredients.RecipeID = 1;

-- Q3: Retrieve all meal plans for a user in a specific date range
SELECT RecipeName, Date
FROM MealPlans
JOIN Recipes ON MealPlans.RecipeID = Recipes.RecipeID
WHERE MealPlans.UserID = 1 AND Date BETWEEN '2023-10-10' AND '2023-10-15';

-- Q4: Retrieve all recipes that do not contain a specific ingredient
SELECT RecipeName
FROM Recipes
WHERE RecipeID NOT IN (
    SELECT RecipeID
    FROM RecipeIngredients
    JOIN Ingredients ON RecipeIngredients.IngredientID = Ingredients.IngredientID
    WHERE IngredientName = 'Chicken'
);

-- Q5: Retrieve all users who have a meal plan with a specific recipe
SELECT Username, Email
FROM Users
WHERE UserID IN (
    SELECT UserID
    FROM MealPlans
    WHERE RecipeID = 2
);