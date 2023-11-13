-- recipe_db_init.sql

-- Creating Users Table
CREATE TABLE Users (
    UserID INTEGER PRIMARY KEY,
    Username TEXT NOT NULL,
    Email TEXT NOT NULL
);

-- Creating Recipes Table
CREATE TABLE Recipes (
    RecipeID INTEGER PRIMARY KEY,
    RecipeName TEXT NOT NULL,
    CuisineType TEXT,
    PreparationTime INTEGER
);

-- Creating Ingredients Table
CREATE TABLE Ingredients (
    IngredientID INTEGER PRIMARY KEY,
    IngredientName TEXT NOT NULL
);

-- Creating RecipeIngredients Table
CREATE TABLE RecipeIngredients (
    RecipeIngredientID INTEGER PRIMARY KEY,
    RecipeID INTEGER,
    IngredientID INTEGER,
    Quantity REAL,
    Unit TEXT,
    FOREIGN KEY (RecipeID) REFERENCES Recipes(RecipeID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID)
);

-- Creating MealPlans Table
CREATE TABLE MealPlans (
    MealPlanID INTEGER PRIMARY KEY,
    UserID INTEGER,
    RecipeID INTEGER,
    Date DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (RecipeID) REFERENCES Recipes(RecipeID)
);

-- Creating UserPreferences Table
CREATE TABLE UserPreferences (
    UserPreferenceID INTEGER PRIMARY KEY,
    UserID INTEGER,
    PreferredCuisine TEXT,
    DietaryRestrictions TEXT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);