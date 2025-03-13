/* FILE FOR RUNNING A LIST OF QUERIES SPECIFIED IN SECTION 2 OF THE ASSIGNMENT REPORT */


/* Get top 3 countries with highest medal count across the board */
SELECT Country_Name,	Total_Gold_Medals, Total_Silver_Medals, Total_Bronze_Medals, Total_Medal_Count
FROM Country
ORDER BY Total_Medal_Count DESC
LIMIT 3;


/* Get athletes with at least one medal and their total medal count */
SELECT p.First_Name, p.Last_Name, COUNT(m.Medal_ID) AS Total_Medals
FROM Person p
JOIN Athlete a ON p.Person_ID = a.Person_ID
JOIN Medal m ON a.Person_ID = m.Person_ID
GROUP BY p.Person_ID, p.First_Name, p.Last_Name
HAVING COUNT(m.Medal_ID) >= 1
ORDER BY Total_Medals DESC;


/* Get top three events with the most medals awarded */
SELECT e.Event_Name, COUNT(m.Medal_ID) AS Medals_Awarded
FROM Event e
JOIN Medal m ON e.Event_ID = m.Event_ID
GROUP BY e.Event_ID, e.Event_Name
ORDER BY Medals_Awarded DESC
LIMIT 3;


/* Get coaches who have trained the more than three athletes */
SELECT p.First_Name, p.Last_Name, co.Country_Name, c.Coaching_Field, COUNT(t.Athlete_ID) AS Number_of_Athletes
FROM Coach c
JOIN Person p ON c.Person_ID = p.Person_ID
JOIN Country co ON c.Country_ID = co.Country_ID
JOIN Trains t ON c.Person_ID = t.Coach_ID
GROUP BY c.Person_ID, p.First_Name, p.Last_Name, co.Country_Name, c.Coaching_Field
HAVING COUNT(t.Athlete_ID) > 3
ORDER BY Number_of_Athletes DESC;


/* Get average age of athletes in the Men’s 100m Sprint */
SELECT AVG(YEAR(CURDATE()) - YEAR(p.DOB) - (DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(p.DOB, '%m%d'))) AS Average_Age
FROM Participation part
JOIN Person p ON part.Person_ID = p.Person_ID
JOIN Event e ON part.Event_ID = e.Event_ID
WHERE e.Event_Name = 'Men\'s 100m sprint' AND part.Person_ID IS NOT NULL;


/* Get which venue hosted the most number of events */
SELECT v.Venue_Name, COUNT(hi.Event_ID) AS Events_Hosted
FROM Venue v
JOIN Hosted_In hi ON v.Venue_ID = hi.Venue_ID
GROUP BY v.Venue_ID, v.Venue_Name
ORDER BY Events_Hosted DESC
LIMIT 1;


/* List of all events at Stade de France and their medalists */
SELECT e.Event_Name, m.Medal_Type,
	CASE
    	WHEN m.Person_ID IS NOT NULL THEN CONCAT(p.First_Name, ' ', p.Last_Name)
    	WHEN m.Team_ID IS NOT NULL THEN t.Team_Name
    	ELSE 'N/A'
	END AS Medalist,
	c.Country_Name AS Medalist_Country
FROM Event e
JOIN Hosted_In hi ON e.Event_ID = hi.Event_ID
JOIN Venue v ON hi.Venue_ID = v.Venue_ID
JOIN Medal m ON e.Event_ID = m.Event_ID
LEFT JOIN Person p ON m.Person_ID = p.Person_ID
LEFT JOIN Team t ON m.Team_ID = t.Team_ID
JOIN Country c ON m.Country_ID = c.Country_ID
WHERE v.Venue_Name = 'Stade de France'
ORDER BY e.Event_Name, m.Medal_Type;


