SELECT title, author FROM books;

SELECT title FROM books WHERE author = 'Henry Davis';

SELECT title, author, release_year FROM books WHERE release_year < 1900;

SELECT * FROM books WHERE title ILIKE 'O%';

SELECT title, author FROM books WHERE release_year > 1950;

SELECT COUNT(*) FROM books;

SELECT author, COUNT(*) FROM books
GROUP BY author
ORDER BY COUNT(*) DESC;

SELECT title, release_year FROM books
ORDER BY release_year;

SELECT title FROM books 
WHERE release_year IN (SELECT MIN(release_year) FROM books) 
LIMIT 1;

SELECT title FROM books 
WHERE release_year IN (SELECT MAX(release_year) FROM books)
LIMIT 1;

SELECT title, author FROM books 
ORDER BY id DESC
LIMIT 3;



SELECT SUM(quantity_in_stock) FROM products;

SELECT ROUND(AVG(price::NUMERIC),2)::MONEY FROM products;

SELECT product FROM products
ORDER BY price DESC
LIMIT 1;

SELECT product FROM products
ORDER BY price
LIMIT 1;

SELECT product, (price * quantity_in_stock) AS total_price_in_stock FROM products;

SELECT COUNT(*) FROM products
WHERE quantity_in_stock < 20;

SELECT 	product FROM products
ORDER BY (price * quantity_in_stock) DESC
LIMIT 1;



SELECT 
	e.name "funcionario", 
	e.role "cargo", 
	d.name "departamento"
from employees e
LEFT JOIN departments d on e.department_id = d.id;

SELECT 
	e.name "funcionario",
	e.role "cargo",
	e.salary "Salario"
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
WHERE d.name = 'Vendas';

SELECT
	e.name "funcionario",
	e.role "cargo",
	e.salary "salario"
FROM employees e
INNER JOIN departments d ON e.department_id = d.id
WHERE salary::numeric > 3500 AND d.name = 'Vendas';









SELECT 	SUM(salary) FROM employees;

SELECT
	d.name "departamento",
	SUM(e.salary) "total do salario"
FROM departments d
INNER JOIN employees e
ON e.department_id = d.id
GROUP BY d.id;

SELECT 
	MAX(e.salary) "maior salario", 
	d.name departamento
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
GROUP BY d.id;











