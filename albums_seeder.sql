USE codeup_test_db;

SELECT 'Truncating albums table' as 'Truncate Statement';

TRUNCATE ablbums;

SELECT 'Inserting records into albums table' AS 'Insert Statement';

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ("Michael Jackson", "Thriller", "1982", "47", "Pop"),
       ("Eagles", "Their Greatest Hits", "1976", "41", "Rock"),
       ("AC_DC", "Back in Black", "1980", "26", "Rock"),
       ("Pink Floyd", "The Dark Side of The Moon", "1973", "24", "Rock");


