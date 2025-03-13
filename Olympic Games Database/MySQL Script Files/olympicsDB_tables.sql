/* FILE FOR CREATING TABLES FOR THE OLYMPICS DATABASE */


CREATE TABLE Country (
    Country_ID INT PRIMARY KEY,
    Country_Name VARCHAR(100) NOT NULL,
    Total_Gold_Medals INT DEFAULT 0,
    Total_Silver_Medals INT DEFAULT 0,
    Total_Bronze_Medals INT DEFAULT 0,
    Total_Medal_Count INT GENERATED ALWAYS AS 
    (Total_Gold_Medals + Total_Silver_Medals + Total_Bronze_Medals) STORED
);


CREATE TABLE Person (
    Person_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')) NOT NULL
);


CREATE TABLE Venue (
    Venue_ID INT PRIMARY KEY AUTO_INCREMENT,
    Venue_Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL
);


CREATE TABLE Event (
    Event_ID INT PRIMARY KEY AUTO_INCREMENT,
    Event_Name VARCHAR(100) NOT NULL,
    Event_Type VARCHAR(50) NOT NULL,
    World_Record VARCHAR(50) NOT NULL
);


CREATE TABLE Hosted_In (
    Event_ID INT,
    Venue_ID INT,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    PRIMARY KEY (Event_ID, Venue_ID),
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID),
    FOREIGN KEY (Venue_ID) REFERENCES Venue(Venue_ID)
);


CREATE TABLE Athlete (
    Person_ID INT PRIMARY KEY,
    Country_ID INT NOT NULL,
    Sport VARCHAR(50) NOT NULL,
    FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID),
    FOREIGN KEY (Country_ID) REFERENCES Country(Country_ID)
);


CREATE TABLE Coach (
    Person_ID INT PRIMARY KEY,
    Country_ID INT NOT NULL,
    Coaching_Field VARCHAR(50) NOT NULL,
    FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID),
    FOREIGN KEY (Country_ID) REFERENCES Country(Country_ID)
);


CREATE TABLE Trains (
    Coach_ID INT,
    Athlete_ID INT,
    PRIMARY KEY (Coach_ID, Athlete_ID),
    FOREIGN KEY (Coach_ID) REFERENCES Coach(Person_ID),
    FOREIGN KEY (Athlete_ID) REFERENCES Athlete(Person_ID)
);


CREATE TABLE Team (
    Team_ID INT PRIMARY KEY AUTO_INCREMENT,
    Team_Name VARCHAR(50) NOT NULL,
    Number_Of_Athletes INT NOT NULL,
    Country_ID INT NOT NULL,
    FOREIGN KEY (Country_ID) REFERENCES Country(Country_ID)
);


CREATE TABLE Team_Player (
    Person_ID INT NOT NULL,
    Team_ID INT NOT NULL,
    Athlete_Number INT NOT NULL,
    PRIMARY KEY (Person_ID, Team_ID),
    FOREIGN KEY (Person_ID) REFERENCES Athlete(Person_ID),
    FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID)
);


CREATE TABLE Medal (
    Medal_ID INT PRIMARY KEY AUTO_INCREMENT,
    Event_ID INT NOT NULL,
    Person_ID INT NULL,
    Team_ID INT NULL,
    Country_ID INT NOT NULL,
    Medal_Type VARCHAR(6) CHECK (Medal_Type IN ('Gold', 'Silver', 'Bronze')) NOT NULL,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID),
    FOREIGN KEY (Person_ID) REFERENCES Athlete(Person_ID),
    FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID),
    FOREIGN KEY (Country_ID) REFERENCES Country(Country_ID)
);


CREATE TABLE Participation (
    Participation_ID INT PRIMARY KEY AUTO_INCREMENT,
    Person_ID INT NULL,
    Team_ID INT NULL,
    Country_ID INT NOT NULL,
    Event_ID INT NOT NULL,
    Result VARCHAR(50) NOT NULL,
    Result_Type VARCHAR(20) NOT NULL,
    Ranking INT NOT NULL,
    FOREIGN KEY (Person_ID) REFERENCES Athlete(Person_ID),
    FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID),
    FOREIGN KEY (Country_ID) REFERENCES Country(Country_ID),
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID)
);


