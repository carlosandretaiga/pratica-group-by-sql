--Questão 1:
SELECT COUNT("endDate") AS "currentExperiences" 
FROM experiences;
--WHERE "endDate" IS NOT null


--Quesetão 2: 
SELECT users.id AS id, COUNT(educations.id) AS educations  
FROM users 
JOIN educations
ON educations."userId" = users.id
GROUP BY users.id;


--Questão 3: 
SELECT users.name AS writer, COUNT(testimonials."writerId") AS "testimonailCount"
FROM users
JOIN testimonials 
ON users.id = testimonials."writerId"
WHERE users.id = 435
GROUP BY users.name;


--Questão 4
SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role
FROM jobs 
JOIN roles 
ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY  roles.name
ORDER BY "maximumSalary"; 

