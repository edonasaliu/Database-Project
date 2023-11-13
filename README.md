# Database Design Projects

## Overview

This repository contains the database design and SQL scripts for two applications:
1. **Personal Finance Management App**
2. **Recipe Recommendation and Meal Planning App**

Both projects involve creating a database schema, inserting mock data, running queries, and validating the results. Each app aims to solve specific user needs and problems through structured data management.

## Project 1: Personal Finance Management App

### Description

The Personal Finance Management App helps users track their incomes, expenses, and investments, providing a clear overview of their financial status and facilitating better financial management.

### Files
- **finance_db_init.sql**: Initializes the database schema.
- **data_insertion_finance.sql**: Inserts mock data into the database.
- **data_query_finance.sql**: Contains SQL queries to retrieve data.
- **query_result_finance.md**: Documents expected results of the queries.
- **README_finance.md**: Provides detailed information about the project.

### ER Diagram
Refer to `finance_er_diagram.png` for the entity-relationship diagram of the database schema.

## Project 2: Recipe Recommendation and Meal Planning App

### Description

The Recipe Recommendation and Meal Planning App assists users in discovering new recipes, planning meals, and managing dietary preferences, considering various cuisines and ingredient availability.

### Files
- **recipe_db_init.sql**: Initializes the database schema.
- **data_insertion_recipe.sql**: Inserts mock data into the database.
- **data_query_recipe.sql**: Contains SQL queries to retrieve data.
- **query_result_recipe.md**: Documents expected results of the queries.
- **README_recipe.md**: Provides detailed information about the project.

### ER Diagram
Refer to `recipe_er_diagram.png` for the entity-relationship diagram of the database schema.

## Usage

To use the SQL scripts, ensure SQLite is installed on your system. Navigate to the project directory and execute the SQL scripts using the SQLite3 shell. Validate the results of the queries against the expected results documented in the respective `query_result` markdown files.

## Note

Ensure to validate the SQL code and mock data by running them in an SQLite3 shell before submission. Review the ER diagrams and README files for a comprehensive understanding of each project.