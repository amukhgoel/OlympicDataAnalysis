-- Let's view the athletes data
Select TOP 5 * from athletes;

-- Lets say we want to calculate total number of athletes each country.
-- We will order the results by Athletes count 
SELECT NOC as Country, COUNT(Name) as Total_Athletes
FROM athletes
GROUP BY NOC
ORDER BY 2 DESC;

-- Avg number of entries by Gender for each discipline
SELECT Discipline, AVG(Female) as Avg_Females, AVG(Male) as Avg_Males
FROM entriesGender
GROUP BY Discipline
ORDER BY 2,3;

-- Total number of coaches for each discipline
SELECT Discipline, COUNT(DISTINCT Name) as Total_Coaches
FROM coaches
GROUP BY Discipline
ORDER BY 2;
-- Total Number of events per country
Select Name, COUNT(Event) AS Total_Events
FROM teams
GROUP BY Name
ORDER BY 2;
