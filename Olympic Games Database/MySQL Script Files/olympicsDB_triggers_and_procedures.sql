/* FILE FOR SETTING UP TRIGGERS, PROCEDURE, VIEWS AND INDEXES AS SPECIFIED IN SECTION 3 OF THE ASSIGNMENT REPORT */


/* Stored Procedure to Retrieve a Country’s Medal Tally */
DELIMITER $$

CREATE PROCEDURE GetCountryMedalTally (
	IN p_Country_ID INT
)
BEGIN
	SELECT
    	Country_Name,
    	Total_Gold_Medals,
    	Total_Silver_Medals,
    	Total_Bronze_Medals,
    	Total_Medal_Count
	FROM
    	Country
	WHERE
    	Country_ID = p_Country_ID;
END$$

DELIMITER ;


/* Stored Procedure to Add a New Medal */
DELIMITER $$

CREATE PROCEDURE AddNewMedal (
	IN p_Event_ID INT,
	IN p_Person_ID INT,  
	IN p_Team_ID INT,	
	IN p_Country_ID INT,
	IN p_Medal_Type VARCHAR(6)
)
BEGIN
	INSERT INTO Medal (Event_ID, Person_ID, Team_ID, Country_ID, Medal_Type)
	VALUES (p_Event_ID, p_Person_ID, p_Team_ID, p_Country_ID, p_Medal_Type);
END$$

DELIMITER ;


/* Trigger to Automatically Update Country Medals Counts After Medal Insertion */
DELIMITER $$

CREATE TRIGGER trg_after_medal_insert
AFTER INSERT ON Medal
FOR EACH ROW
BEGIN
	IF NEW.Medal_Type = 'Gold' THEN
    	UPDATE Country
    	SET Total_Gold_Medals = Total_Gold_Medals + 1
    	WHERE Country_ID = NEW.Country_ID;
	ELSEIF NEW.Medal_Type = 'Silver' THEN
    	UPDATE Country
    	SET Total_Silver_Medals = Total_Silver_Medals + 1
    	WHERE Country_ID = NEW.Country_ID;
	ELSEIF NEW.Medal_Type = 'Bronze' THEN
    	UPDATE Country
    	SET Total_Bronze_Medals = Total_Bronze_Medals + 1
    	WHERE Country_ID = NEW.Country_ID;
	END IF;
END$$

DELIMITER ;


/* Trigger to Automatically Update Country Medals Counts After Medal Insertion */
DELIMITER $$

CREATE TRIGGER trg_after_medal_delete
AFTER DELETE ON Medal
FOR EACH ROW
BEGIN
	IF OLD.Medal_Type = 'Gold' THEN
    	UPDATE Country
    	SET Total_Gold_Medals = Total_Gold_Medals - 1
    	WHERE Country_ID = OLD.Country_ID;
	ELSEIF OLD.Medal_Type = 'Silver' THEN
    	UPDATE Country
    	SET Total_Silver_Medals = Total_Silver_Medals - 1
    	WHERE Country_ID = OLD.Country_ID;
	ELSEIF OLD.Medal_Type = 'Bronze' THEN
    	UPDATE Country
    	SET Total_Bronze_Medals = Total_Bronze_Medals - 1
    	WHERE Country_ID = OLD.Country_ID;
	END IF;
END$$

DELIMITER ;


/* View to Display Comprehensive Medalist Information */
CREATE VIEW Full_Medalist_Info AS
SELECT e.Event_Name, e.Event_Type, e.World_Record, hi.Date, hi.Time, v.Venue_Name, v.Location,
	m.Medal_Type,
	CASE
    	WHEN m.Person_ID IS NOT NULL THEN CONCAT(p.First_Name, ' ', p.Last_Name)
    	WHEN m.Team_ID IS NOT NULL THEN t.Team_Name
    	ELSE 'N/A'
	END AS Medalist_Name,
	c.Country_Name AS Medalist_Country
FROM Medal m
JOIN Event e ON m.Event_ID = e.Event_ID
JOIN Hosted_In hi ON m.Event_ID = hi.Event_ID
JOIN Venue v ON hi.Venue_ID = v.Venue_ID
LEFT JOIN Athlete a ON m.Person_ID = a.Person_ID
LEFT JOIN Person p ON a.Person_ID = p.Person_ID
LEFT JOIN Team t ON m.Team_ID = t.Team_ID
JOIN Country c ON m.Country_ID = c.Country_ID;


/* Index for Participation and Medal Tables */
-- Index on Person_ID in Participation table
CREATE INDEX idx_participation_person_id ON Participation (Person_ID);

-- Index on Person_ID in Medal table
CREATE INDEX idx_medal_person_id ON Medal (Person_ID);


