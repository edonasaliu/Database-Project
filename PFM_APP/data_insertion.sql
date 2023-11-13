-- data_insertion.sql

-- Inserting Mock Data into Users Table
INSERT INTO Users (Username, Email) VALUES
('JohnDoe', 'john@example.com'),
('JaneDoe', 'jane@example.com');

-- Inserting Mock Data into Categories Table
INSERT INTO Categories (CategoryName) VALUES
('Groceries'),
('Utilities'),
('Dining'),
('Entertainment');

-- Inserting Mock Data into Accounts Table
INSERT INTO Accounts (UserID, AccountName, AccountType, Balance) VALUES
(1, 'Main Bank Account', 'Checking', 1000.00),
(2, 'Savings Account', 'Savings', 5000.00);

-- Inserting Mock Data into Transactions Table
INSERT INTO Transactions (AccountID, CategoryID, TransactionType, Amount, TransactionDate, Description) VALUES
(1, 1, 'Expense', 100.00, '2023-10-01', 'Grocery shopping'),
(1, 2, 'Expense', 150.00, '2023-10-02', 'Electricity bill'),
(1, 3, 'Expense', 50.00, '2023-10-03', 'Dinner at a restaurant'),
(1, 4, 'Expense', 30.00, '2023-10-04', 'Movie night'),
(1, 1, 'Income', 2000.00, '2023-10-01', 'Salary');

-- Inserting Mock Data into Budgets Table
INSERT INTO Budgets (UserID, CategoryID, Amount, MonthYear) VALUES
(1, 1, 400.00, '2023-10-01'),
(1, 2, 200.00, '2023-10-01'),
(1, 3, 150.00, '2023-10-01'),
(1, 4, 100.00, '2023-10-01');