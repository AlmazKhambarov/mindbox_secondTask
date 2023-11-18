SELECT P.ProductName, COALESCE(C.CategoryName, 'Без категории') AS CategoryName
FROM Products P
LEFT JOIN ProductCategory PC ON P.ProductID = PC.ProductID
LEFT JOIN Categories C ON PC.CategoryID = C.CategoryID;
-- Products - это таблица с продуктами.
-- Categories - это таблица с категориями.
-- ProductCategory - это таблица, которая устанавливает связь между продуктами и категориями по их идентификаторам (ProductID и CategoryID).