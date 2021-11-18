USE codeup_test_db;


# Albums released after 1991
SELECT 'Albums released after 1991' AS 'Info';
SELECT * FROM albums WHERE release_date > 1991;

-- Albums with the genre 'disco'
SELECT 'Albums with the genre ''disco''' AS 'Info';
SELECT * FROM albums WHERE genre = 'disco';

# Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT 'Albums where artist is Whitney Houston' AS 'Info';
SELECT * FROM albums WHERE artist = 'Whitney Houston';


SELECT 'Delete albums released after 1991' AS 'Info';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Delete albums where genre is disco' AS 'Info';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Delete albums where artist is Whitney Houston' AS 'Info';
DELETE FROM albums WHERE artist = 'Whitney Houston';