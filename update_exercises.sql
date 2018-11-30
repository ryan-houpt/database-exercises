USE codeup_test_db;

SELECT * from albums;
UPDATE albums set sales = sales * 10;

select * from albums where release_date < 1980;

UPDATE albums set release_date = release_date - 100 where release_date < 1980;

select * from albums where artist = 'Michael Jackson';
UPDATE albums set artist = "Peter Jackson" where artist = "Michael Jackson";







-- Create a file called update_exercises.sql.
--
-- Write SELECT statements to output each of the following with a caption:
--
-- All albums in your table.
-- All albums released before 1980
-- All albums by Michael Jackson

-- After each SELECT add an UPDATE statement to:
--
-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change 'Michael Jackson' to 'Peter Jackson'
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.