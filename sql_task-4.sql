SELECT COUNT(*) AS total_books
FROM books;

SELECT AVG(publication_year) AS average_publication_year
FROM books
WHERE publication_year IS NOT NULL;

SELECT 
  MAX(copies_available) AS max_copies,
  MIN(copies_available) AS min_copies
FROM books;

SELECT author_id, COUNT(*) AS book_count
FROM books
GROUP BY author_id;

SELECT genre, SUM(copies_available) AS total_copies
FROM books
GROUP BY genre;

SELECT genre, COUNT(*) AS total_books
FROM books
GROUP BY genre
HAVING COUNT(*) > 1;


SELECT author_id, COUNT(*) AS book_count
FROM books
GROUP BY author_id
HAVING COUNT(*) > 1;







