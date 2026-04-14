CREATE TABLE jan_2023_jobs AS 
    SELECT *
    FROM 
        job_postings_fact as jobs
    WHERE 
        EXTRACT(YEAR FROM jobs.job_posted_date) = 2023
        AND EXTRACT(MONTH FROM jobs.job_posted_date) = 1;

CREATE TABLE feb_2023_jobs AS 
    SELECT *
    FROM 
        job_postings_fact as jobs
    WHERE 
        EXTRACT(YEAR FROM jobs.job_posted_date) = 2023
        AND EXTRACT(MONTH FROM jobs.job_posted_date) = 2;

CREATE TABLE mar_2023_jobs AS 
    SELECT *
    FROM 
        job_postings_fact as jobs
    WHERE 
        EXTRACT(YEAR FROM jobs.job_posted_date) = 2023
        AND EXTRACT(MONTH FROM jobs.job_posted_date) = 3;

SELECT *
FROM feb_2023_jobs
limit 10;

DROP TABLE jan_2023_jobs;
DROP TABLE feb_2023_jobs;
DROP TABLE mar_2023_jobs;