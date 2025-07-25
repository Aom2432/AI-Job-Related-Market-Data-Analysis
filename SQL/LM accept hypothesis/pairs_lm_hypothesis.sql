CREATE DATABASE AI_job_market;

USE AI_job_market;

-- Experience Level Required : Mid-level

SELECT
    id_cleaned,
    experience_level_cleaned,
    years_experience,
    salary_usd
FROM
    ai_job_dataset_cleaned
WHERE
    experience_level_cleaned = 'Mid-level'
ORDER BY years_experience ASC, salary_usd ASC;

-- Job Title : Autonomous Systems Engineer / Years of Experience

SELECT
	ai_job_dataset_cleaned.id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	job_title LIKE "Autonomous Systems Engineer"
ORDER BY years_experience ASC, salary_usd ASC;

-- Years of Experience / Industry : Retail

SELECT
	id_cleaned,
    industry,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	industry LIKE "Retail"
ORDER BY years_experience ASC, salary_usd ASC;

-- Years of Experience / Industry : Media

SELECT
	id_cleaned,
    industry,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	industry LIKE "Media"
ORDER BY years_experience ASC, salary_usd ASC;

-- Years of Experience / Industry : Gaming

SELECT
	id_cleaned,
    industry,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	industry LIKE "Gaming"
ORDER BY years_experience ASC, salary_usd ASC;

-- Job Title : AI Research Scientist / Years of Experience

SELECT
	id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	job_title LIKE "AI Research Scientist"
ORDER BY years_experience ASC, salary_usd ASC;

-- Job Title : Machine Learning Engineer / Years of Experience

SELECT
	id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	job_title LIKE "Machine Learning Engineer"
ORDER BY years_experience ASC, salary_usd ASC;

-- Years of Experience / Industry : Consulting

SELECT
	id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	industry LIKE "Consulting"
ORDER BY years_experience ASC, salary_usd ASC;

-- Job Title : AI Specialist / Years of Experience

SELECT
	id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	job_title LIKE "AI Specialist"
ORDER BY years_experience ASC, salary_usd ASC;

-- Years of Experience / Industry : Real Estate

SELECT
	id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	industry LIKE "Real Estate"
ORDER BY years_experience ASC, salary_usd ASC;
