-- Write your code below this line
DROP TABLE IF EXISTS cities;
-- Create the cities table
CREATE TABLE cities (
    id INTEGER PRIMARY KEY,
    name TEXT,
    country TEXT,
    population INTEGER
);

INSERT INTO cities (id, name, country, population) VALUES

-- You can run this file with the command sqlite3 world_cities.db < world_cities.sql
-- If you don't run this file before running the tests, some tests will fail even though your queries may be correct!