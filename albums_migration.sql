USE codeup_test_db;
drop table if exists albums;
create table albums (
  id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
  artist VARCHAR(240),
  name VARCHAR(240),
  release_date INT,
  sales FLOAT,
  genre VARCHAR(240)
);


-- id — auto incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)