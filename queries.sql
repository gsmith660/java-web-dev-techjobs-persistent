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

# Alternate solution to part 4 still doesn't use IS NOT NULL
SELECT DISTINCT s.name, s.description
FROM skill s
INNER JOIN job_skills ON s.id = job_skills.skills_id
ORDER BY s.name;

# Altered previous solution to force a use of is not null
SELECT DISTINCT s.name, s.description
FROM skill s
LEFT JOIN job_skills ON s.id = job_skills.skills_id
WHERE job_skills.skills_id IS NOT NULL
ORDER BY s.name;