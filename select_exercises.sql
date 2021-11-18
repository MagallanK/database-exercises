USE codeup_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT name FROM albums WHERE 1990 <= release_date < 2000;

SELECT name FROM albums WHERE sales < 20;

SELECT genre FROM albums WHERE name = 'Rock';