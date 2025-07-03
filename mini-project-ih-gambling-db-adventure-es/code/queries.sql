
-- 1.

SELECT Title, FirstName, LastName, DateOfBirth
FROM Customer

-- 2.

SELECT CustomerGroup, COUNT(CustId) AS 'Número de clientes'
FROM Customer
GROUP BY CustomerGroup

-- 3.

SELECT c.*, a.CurrencyCode
FROM Customer c
INNER JOIN Account a ON c.CustId = a.CustId

-- 4.

SELECT Product, SUM(Bet_Amt) AS 'Total Apostado'
FROM Betting
GROUP BY (BetDate, Product)

-- 5.

SELECT Product, SUM(Bet_Amt) AS 'Total Apostado'
FROM Betting 
GROUP BY (BetDate, Product)
WHERE BetDate >= '2012/11/01 00:00:00'
AND Product = 'Sportsbook'

-- 6.

SELECT b.product a.CurrencyCode, c.CustomerGroup
FROM Betting b
INNER JOIN Account a ON b.AccountNo = a.AccountNo
INNER JOIN Customer c ON b.CustId = c.CustId
GROUP BY (b.product, a.CurrencyCode, c.CustomerGroup)
WHERE BetDate >= '2012/11/01 00:00:00'

-- 7.

SELECT c.Title, c.FirstName, c.LastName, SUM(b.Bet_Amt) as 'Total Apostado'
FROM Customer c
LEFT JOIN Betting b ON c.CustId = b.CustID
GROUP BY c.CustId
WHERE BetDate >= '2012/11/01 00:00:00' AND BetDate < '2012/12/01 00:00:00'

-- 8.

SELECT a.CustId, COUNT(DISTINCT b.Product) AS 'Número de productos'
FROM Account a
INNER JOIN Betting b ON a.AccountNo = b.AccountNo
GROUP BY a.CustId

SELECT a.CustId
FROM Account a
INNER JOIN Betting b ON a.AccountNo = b.AccountNo
WHERE b.Product IN ['Sportsbook', 'Vegas']

-- 9.

SELECT a.CustID, SUM(b.Bet_Amt) AS 'Suma de apuestas'
FROM Betting b
INNER JOIN Account a ON b.AccountNo = a.AccountNo
GROUP BY a.CustID
WHERE Product = 'Sportsbook' AND b.Bet_Amt > 0

-- 10.


-- 11.

SELECT student_id, sutdent_name, GPA
FROM student
ORDER BY GPA DESC LIMIT 5

-- 12.

SELECT school_name, COUNT(st.student_id) AS 'Número de estudiantes'
FROM school sc
LEFT JOIN student st ON sc.school_id = st.school_id

-- 13.

