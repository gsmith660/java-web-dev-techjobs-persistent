## Part 1: Test it with SQL
SHOW COLUMNS FROM job

## Part 2: Test it with SQL
SELECT name
FROM employer
WHERE location = "St. Louis City";

## Part 3: Test it with SQL
DROP TABLE job;

## Part 4: Test it with SQL
SELECT s.name, s.description
FROM skill s
WHERE s.id IN (
	SELECT js.skills_id
    FROM job_skills js
)
ORDER BY s.name;