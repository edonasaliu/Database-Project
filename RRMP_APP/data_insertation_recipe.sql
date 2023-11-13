-- data_insertion_recipe.sql

-- Inserting Data into Users Table
INSERT INTO Users (Username, Email) VALUES
('CookMaster', 'cookmaster@example.com'),
('Foodie', 'foodie@example.com');

-- Inserting Data into Recipes Table
INSERT INTO Recipes (RecipeName, CuisineType, PreparationTime) VALUES
('Spaghetti Bolognese', 'Italian', 30),
('Chicken Curry', 'Indian', 45),
('Vegetable Stir Fry', 'Chinese', 25);

-- Inserting Data into Ingredients Table
INSERT INTO Ingredients (IngredientName) VALUES
('Spaghetti'),
('Minced Beef'),
('Tomato Sauce'),
('Chicken'),
('Curry Powder'),
('Vegetables'),
('Soy Sauce');

-- Inserting Data into RecipeIngredients Table
INSERT INTO RecipeIngredients (RecipeID, IngredientID, Quantity, Unit) VALUES
(1, 1, 200, 'g'),
(1, 2, 150, 'g'),
(1, 3, 100, 'ml'),
(2, 4, 200, 'g'),
(2, 5, 2, 'tsp'),
(3, 6, 300, 'g'),
(3, 7, 50, 'ml');

-- Inserting Data into MealPlans Table
INSERT INTO MealPlans (UserID, RecipeID, Date) VALUES
(1, 1, '2023-10-10'),
(1, 2, '2023-10-11'),
(2, 3, '2023-10-12');

-- Inserting Data into UserPreferences Table
INSERT INTO UserPreferences (UserID, PreferredCuisine, DietaryRestrictions) VALUES
(1, 'Italian', NULL),
(2, 'Vegan', 'No Meat, No Dairy');