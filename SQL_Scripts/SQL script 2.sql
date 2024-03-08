-- Percentage of Participants won the medals 
WITH TotalAthletesPerCountry AS 
(
    SELECT A.NOC as Country,CAST (COUNT(A.Name) AS NUMERIC) as Total_Athletes_Country
    FROM athletes A 
    GROUP BY NOC
)
SELECT A.Country, A.Total_Athletes_Country, B.Total, 
       (B.Total/A.Total_Athletes_Country * 100) Percentage_Medals_Participated,
        DENSE_RANK() OVER (ORDER BY (B.Total/A.Total_Athletes_Country * 100) DESC) AS
        Ranked_by_percentage
FROM TotalAthletesPerCountry A JOIN medals B
ON A.Country = B.Team_NOC
;