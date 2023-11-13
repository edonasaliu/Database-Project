-- data_query.sql

-- Q1: Monthly Spending
-- How much has a user spent in a particular month?
SELECT SUM(Amount) AS MonthlySpending
FROM Transactions
WHERE TransactionType = 'Expense' AND UserID = 1 AND strftime('%Y-%m', TransactionDate) = '2023-10';

-- Q2: Budget Tracking
-- How much of the budget has been spent for a particular category in a specific month?
SELECT b.Amount AS Budget, SUM(t.Amount) AS Spent, (b.Amount - SUM(t.Amount)) AS Remaining
FROM Budgets b
JOIN Transactions t ON b.CategoryID = t.CategoryID AND b.UserID = t.UserID
WHERE b.UserID = 1 AND b.CategoryID = 1 AND strftime('%Y-%m', b.MonthYear) = '2023-10' AND strftime('%Y-%m', t.TransactionDate) = '2023-10';

-- Q3: Account Balance
-- What is the current balance of a particular account?
SELECT Balance
FROM Accounts
WHERE AccountID = 1;

-- Q4: Category-wise Spending
-- How much does a user spend per category in a specific time frame?
SELECT c.CategoryName, SUM(t.Amount) AS TotalSpent
FROM Transactions t
JOIN Categories c ON t.CategoryID = c.CategoryID
WHERE t.UserID = 1 AND t.TransactionType = 'Expense' AND strftime('%Y-%m', t.TransactionDate) BETWEEN '2023-10-01' AND '2023-10-31'
GROUP BY c.CategoryName;

-- Q5: Income vs Expense
-- What is the total income vs total expense for a user in a specific time frame?
SELECT TransactionType, SUM(Amount) AS Total
FROM Transactions
WHERE UserID = 1 AND strftime('%Y-%m', TransactionDate) BETWEEN '2023-10-01' AND '2023-10-31'
GROUP BY TransactionType;