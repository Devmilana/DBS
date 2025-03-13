/* FILE FOR VERIFYING DATA INTEGRITY AND CONSISTENCY ACROSS TABLES IN DATABASE */


/* Check Athlete Table References
Ensure that every Country_ID in the Athlete table exists in the Country table 
Expected Result: No rows returned.
Explanation: If any rows are returned, those athletes reference non-existent countries, violating foreign key constraints */
SELECT a.Person_ID, a.Country_ID
FROM Athlete a
LEFT JOIN Country c ON a.Country_ID = c.Country_ID
WHERE c.Country_ID IS NULL;


/* Check Coach Table References
Ensure that every Country_ID in the Coach table exists in the Country table
Expected Result: No rows returned */
SELECT co.Person_ID, co.Country_ID
FROM Coach co
LEFT JOIN Country c ON co.Country_ID = c.Country_ID
WHERE c.Country_ID IS NULL;


/* Check Trains Table References
Ensure that every Coach_ID and Athlete_ID in the Trains table exists in the Coach and Athlete tables, respectively 
Expected Result: No rows returned for both queries */
-- Check Coach_ID
SELECT t.Coach_ID
FROM Trains t
LEFT JOIN Coach co ON t.Coach_ID = co.Person_ID
WHERE t.Coach_ID IS NOT NULL AND co.Person_ID IS NULL;

-- Check Athlete_ID
SELECT t.Athlete_ID
FROM Trains t
LEFT JOIN Athlete a ON t.Athlete_ID = a.Person_ID
WHERE t.Athlete_ID IS NOT NULL AND a.Person_ID IS NULL;


/* Check Team Table References
Ensure that every Country_ID in the Team table exists in the Country table 
Expected Result: No rows returned */
SELECT t.Team_ID, t.Country_ID
FROM Team t
LEFT JOIN Country c ON t.Country_ID = c.Country_ID
WHERE c.Country_ID IS NULL;


/* Check Team_Player Table References
Ensure that every Person_ID in the Team_Player table exists in the Athlete table and every Team_ID exists in the Team table
Expected Result: No rows returned for both queries */
-- Check Person_ID
SELECT tp.Person_ID, tp.Team_ID
FROM Team_Player tp
LEFT JOIN Athlete a ON tp.Person_ID = a.Person_ID
WHERE a.Person_ID IS NULL;

-- Check Team_ID
SELECT tp.Team_ID, tp.Person_ID
FROM Team_Player tp
LEFT JOIN Team t ON tp.Team_ID = t.Team_ID
WHERE t.Team_ID IS NULL;


/* Check Medal Table References
Ensure that every Event_ID exists in the Event table, every non-NULL Person_ID exists in the Athlete table, 
every non-NULL Team_ID exists in the Team table, and every Country_ID exists in the Country table
Expected Result: No rows returned for all queries */
-- Check Event_ID
SELECT m.Medal_ID, m.Event_ID
FROM Medal m
LEFT JOIN Event e ON m.Event_ID = e.Event_ID
WHERE e.Event_ID IS NULL;

-- Check Person_ID (only non-NULL)
SELECT m.Medal_ID, m.Person_ID
FROM Medal m
LEFT JOIN Athlete a ON m.Person_ID = a.Person_ID
WHERE m.Person_ID IS NOT NULL AND a.Person_ID IS NULL;

-- Check Team_ID (only non-NULL)
SELECT m.Medal_ID, m.Team_ID
FROM Medal m
LEFT JOIN Team t ON m.Team_ID = t.Team_ID
WHERE m.Team_ID IS NOT NULL AND t.Team_ID IS NULL;

-- Check Country_ID
SELECT m.Medal_ID, m.Country_ID
FROM Medal m
LEFT JOIN Country c ON m.Country_ID = c.Country_ID
WHERE c.Country_ID IS NULL;


/* Verify Participation Table References
Ensure that every Person_ID (if not NULL) exists in the Athlete table, every Team_ID (if not NULL) exists in the Team table, 
every Country_ID exists in the Country table, and every Event_ID exists in the Event table
Expected Result: No rows returned for all queries */
-- Check Person_ID
SELECT p.Participation_ID, p.Person_ID
FROM Participation p
LEFT JOIN Athlete a ON p.Person_ID = a.Person_ID
WHERE p.Person_ID IS NOT NULL AND a.Person_ID IS NULL;

-- Check Team_ID
SELECT p.Participation_ID, p.Team_ID
FROM Participation p
LEFT JOIN Team t ON p.Team_ID = t.Team_ID
WHERE p.Team_ID IS NOT NULL AND t.Team_ID IS NULL;

-- Check Country_ID
SELECT p.Participation_ID, p.Country_ID
FROM Participation p
LEFT JOIN Country c ON p.Country_ID = c.Country_ID
WHERE c.Country_ID IS NULL;

-- Check Event_ID
SELECT p.Participation_ID, p.Event_ID
FROM Participation p
LEFT JOIN Event e ON p.Event_ID = e.Event_ID
WHERE e.Event_ID IS NULL;


