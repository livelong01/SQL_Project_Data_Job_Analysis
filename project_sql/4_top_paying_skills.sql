/*
Question: What are the top skills based on salary?
- look at the average salary associated with each skill for data analyst positions
- focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for data analysts
    and helps indentify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg),2) AS average_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE
GROUP BY 
    skills
ORDER BY
    average_salary DESC
LIMIT 25;

/* Sumary
*** Top salaries come from scale (Big Data + Engineering): 
Skills like PySpark, Databricks, Scala show that handling massive datasets and
building data pipelines pays far more than basic analysis.

*** Cloud + DevOps = major salary boost: 
Tools like GCP, Kubernetes, Airflow, Jenkins, GitLab indicate that analysts who can deploy, 
automate, and manage data systems earn significantly more.
*** Python/ML are expected, not differentiators: Pandas, NumPy, 
Scikit-learn are essential, but high pay comes when you combine them with 
engineering and infrastructure skills.
*/