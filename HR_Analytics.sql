SELECT
    employee_id,
    first_name AS "First Name",
    last_name AS "Last Name",
    first_name || ' ' || last_name AS "Full Name",
    hire_date AS "Hire Date",
    TO_CHAR(hire_date, 'Month') AS "Month",
    TO_CHAR(hire_date, 'YYYY') AS "Year",
    e.job_id,
    j.job_title,
    salary,
    e.department_id,
    d.department_name AS "Department",
    l.city AS City,
    c.country_name AS "Country",
    gender,
    CASE gender
        WHEN 'F' THEN 'Female'
        WHEN 'M' THEN 'Male'
    END AS FullGender
FROM
    employees e
    LEFT JOIN jobs j ON e.job_id = j.job_id
    LEFT JOIN departments d ON e.department_id = d.department_id
    LEFT JOIN locations l ON d.location_id = l.location_id
    LEFT JOIN countries c ON l.country_id = c.country_id;


