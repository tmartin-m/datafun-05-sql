-- Select all authors
SELECT * FROM authors;

-- Select specific fields from the authors table
SELECT author_id, first_name, last_name, year_born
FROM authors;

-- Select books released after a certain year
SELECT * FROM movies WHERE year_published > 1940;

-- Select books written by a specific author
SELECT * FROM books WHERE author_id = '06cf58ab-90f1-448d-8e54-055e4393e75c';

-- Use distinct and combine conditions
SELECT DISTINCT title FROM books WHERE Year > 1940 AND Year < 1960;

-- Sort books by year published in ascending order
SELECT * FROM books ORDER BY year_published;

-- Sort books by title in descending order
SELECT * FROM books ORDER BY title DESC;

-- Example of an Inner join between authors and books tables
SELECT authors.first_name, authors.last_name, books.title, books.year_published
FROM authors
INNER JOIN books ON authors.author_id = books.author_id;

-- Correct the year published of a book
UPDATE books
SET release_year = 1950
WHERE title = '1984';

-- Delete books by title
DELETE FROM books WHERE title IN ('The Hobbit');

-- Delete books published before 1930
DELETE FROM movies WHERE rating < 1930;

-- count all rows
SELECT COUNT(*) FROM books; 

-- get average year_published
SELECT AVG(year_published) FROM books;

-- combine functions
SELECT AVG(year_published), COUNT(*) FROM books;

-- Get the total sales and average sales amount by a salesperson
--SELECT salesperson_id, SUM(amount), AVG(amount) 
--FROM sales 
--GROUP BY salesperson_id;
