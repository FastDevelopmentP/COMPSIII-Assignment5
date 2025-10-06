-- Write your code below this line
-- STEP 9: Create the cities table (drop & recreate so tests run clean)
DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
  id INTEGER PRIMARY KEY,      -- unique identifier
  name TEXT,                   -- city name
  population INTEGER,          -- population
  country TEXT                 -- country
);

-- STEP 10: Insert the 10 required cities (exact values!)
INSERT INTO cities (id, name, population, country) VALUES
  (1,  'New York',  8398748,  'United States'),
  (2,  'Tokyo',     13515271, 'Japan'),
  (3,  'Cairo',     9500000,  'Egypt'),
  (4,  'Sydney',    5312163,  'Australia'),
  (5,  'Sao Paulo', 12252023, 'Brazil'),
  (6,  'Paris',     2140526,  'France'),
  (7,  'Lagos',     14368332, 'Nigeria'),
  (8,  'Mumbai',    12442373, 'India'),
  (9,  'Osaka',     2752123,  'Japan'),
  (10, 'Beijing',   21542000, 'China');

-- STEP 11 (manual grading):
-- Show all cities
SELECT * FROM cities;

-- Show all cities in Japan
SELECT * FROM cities WHERE country = 'Japan';

-- STEP 12: Fix Beijing population to 19,400,000
UPDATE cities
SET population = 19400000
WHERE name = 'Beijing';

-- STEP 13: Delete New York, Cairo, and Paris
DELETE FROM cities
WHERE name IN ('New York','Cairo','Paris');

-- (Optional) sanity checks the grader might run:
-- SELECT population FROM cities WHERE name='Beijing';
-- SELECT COUNT(*) FROM cities;                 -- should be 7 after deletions
-- SELECT name FROM cities ORDER BY id;         -- remaining city names

