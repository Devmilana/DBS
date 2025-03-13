/* FILE FOR POPULATING TABLES IN THE OLYMPICS DATABASE */


INSERT INTO Country (Country_ID, Country_Name, Total_Gold_Medals, Total_Silver_Medals, Total_Bronze_Medals)
VALUES
(1, 'United States', 0, 0, 0),
(2, 'China', 0, 0, 0),
(3, 'Japan', 0, 0, 0),
(4, 'Great Britain', 0, 0, 0),
(5, 'France', 0, 0, 0),
(6, 'Germany', 0, 0, 0),
(7, 'Italy', 0, 0, 0),
(8, 'Australia', 0, 0, 0),
(9, 'Canada', 0, 0, 0),
(10, 'Brazil', 0, 0, 0),
(11, 'Russia', 0, 0, 0),
(12, 'South Korea', 0, 0, 0),
(13, 'India', 0, 0, 0),
(14, 'Kenya', 0, 0, 0),
(15, 'South Africa', 0, 0, 0);


/* For Person table */
-- Athletes
INSERT INTO Person (Person_ID, First_Name, Last_Name, DOB, Gender)
VALUES
(1, 'Michael', 'Johnson', '1995-05-10', 'M'),
(2, 'Sarah', 'Williams', '1997-07-15', 'F'),
(3, 'David', 'Smith', '1996-08-22', 'M'),
(4, 'Emily', 'Brown', '1998-11-30', 'F'),
(5, 'Li', 'Wei', '1994-03-18', 'M'),
(6, 'Chen', 'Xi', '1996-06-12', 'F'),
(7, 'Hiroshi', 'Tanaka', '1995-09-05', 'M'),
(8, 'Sakura', 'Suzuki', '1997-12-20', 'F'),
(9, 'James', 'Miller', '1995-02-15', 'M'),
(10, 'Anna', 'Davis', '1998-04-25', 'F'),
(11, 'Wang', 'Li', '1994-07-08', 'M'),
(12, 'Zhang', 'Mei', '1996-03-14', 'F'),
(13, 'Daniel', 'Wilson', '1995-10-01', 'M'),
(14, 'Emma', 'Taylor', '1997-05-21', 'F'),
(15, 'Lucas', 'Anderson', '1996-09-17', 'M'),
(16, 'Olivia', 'Thomas', '1998-12-05', 'F'),
(17, 'Alex', 'Martin', '1995-04-11', 'M'),
(18, 'Sophia', 'Lee', '1997-06-23', 'F'),
(19, 'Yuki', 'Yamamoto', '1996-08-29', 'M'),
(20, 'Haruka', 'Sato', '1998-11-12', 'F'),
(21, 'Thomas', 'Clark', '1995-01-19', 'M'),
(22, 'Isabella', 'Lewis', '1997-03-27', 'F'),
(23, 'Ethan', 'Robinson', '1996-07-14', 'M'),
(24, 'Mia', 'Walker', '1998-09-09', 'F'),
(25, 'Noah', 'Hall', '1995-05-06', 'M'),
(26, 'Lily', 'Allen', '1997-02-16', 'F'),
(27, 'Jack', 'Young', '1996-06-30', 'M'),
(28, 'Grace', 'Hernandez', '1998-08-19', 'F'),
(29, 'Oliver', 'King', '1995-10-25', 'M'),
(30, 'Chloe', 'Wright', '1997-12-14', 'F'),
(31, 'Ben', 'Scott', '1994-11-02', 'M'),
(32, 'Amelia', 'Green', '1996-01-29', 'F'),
(33, 'Diego', 'Gonzalez', '1995-03-11', 'M'),
(34, 'Sofia', 'Martinez', '1997-04-18', 'F'),
(35, 'Carlos', 'Rodriguez', '1996-06-07', 'M'),
(36, 'Lucia', 'Lopez', '1998-08-23', 'F'),
(37, 'Kim', 'Min-Joon', '1995-09-30', 'M'),
(38, 'Park', 'Seo-yeon', '1997-11-15', 'F'),
(39, 'Mohammed', 'Ali', '1994-12-20', 'M'),
(40, 'Aisha', 'Khan', '1996-02-05', 'F'),
(41, 'Daniel', 'Evans', '1995-04-27', 'M'),
(42, 'Samantha', 'Baker', '1997-06-12', 'F'),
(43, 'Ahmed', 'Hassan', '1996-08-03', 'M'),
(44, 'Fatima', 'Ahmed', '1998-10-21', 'F'),
(45, 'David', 'Campbell', '1995-12-08', 'M'),
(46, 'Laura', 'Mitchell', '1997-02-14', 'F'),
(47, 'John', 'Perez', '1996-04-19', 'M'),
(48, 'Emily', 'Roberts', '1998-06-25', 'F'),
(49, 'Peter', 'Turner', '1995-08-16', 'M'),
(50, 'Grace', 'Phillips', '1997-11-03', 'F');

-- Coaches
INSERT INTO Person (Person_ID, First_Name, Last_Name, DOB, Gender)
VALUES
(51, 'Robert', 'Johnson', '1970-05-05', 'M'),
(52, 'Linda', 'Smith', '1975-09-15', 'F'),
(53, 'Thomas', 'Brown', '1968-03-22', 'M'),
(54, 'Barbara', 'Jones', '1972-07-30', 'F'),
(55, 'Richard', 'Davis', '1965-01-18', 'M'),
(56, 'Patricia', 'Miller', '1976-10-12', 'F'),
(57, 'Charles', 'Wilson', '1969-06-05', 'M'),
(58, 'Jennifer', 'Moore', '1973-12-20', 'F'),
(59, 'Joseph', 'Taylor', '1971-02-15', 'M'),
(60, 'Elizabeth', 'Anderson', '1974-04-25', 'F'),
(61, 'Li', 'Jun', '1967-09-08', 'M'),
(62, 'Wang', 'Fang', '1975-03-14', 'F'),
(63, 'Chen', 'Liang', '1966-11-01', 'M'),
(64, 'Zhang', 'Yan', '1977-05-21', 'F'),
(65, 'Hiro', 'Yamada', '1970-09-17', 'M'),
(66, 'Yuki', 'Sasaki', '1978-12-05', 'F'),
(67, 'David', 'Clark', '1969-04-11', 'M'),
(68, 'Karen', 'Lewis', '1976-06-23', 'F'),
(69, 'James', 'Robinson', '1968-08-29', 'M'),
(70, 'Susan', 'Walker', '1972-11-12', 'F'),
(71, 'Carlos', 'Hernandez', '1971-01-19', 'M'),
(72, 'Maria', 'Martinez', '1974-03-27', 'F'),
(73, 'Mohammed', 'Farah', '1965-07-14', 'M'),
(74, 'Aisha', 'Hussein', '1973-09-09', 'F'),
(75, 'Daniel', 'King', '1969-05-06', 'M'),
(76, 'Sarah', 'Green', '1975-02-16', 'F'),
(77, 'Kim', 'Dong-hyun', '1970-06-30', 'M'),
(78, 'Lee', 'Ji-eun', '1978-08-19', 'F'),
(79, 'Raj', 'Kumar', '1966-10-25', 'M'),
(80, 'Priya', 'Singh', '1977-12-14', 'F'),
(81, 'Samuel', 'White', '1967-11-02', 'M'),
(82, 'Laura', 'Harris', '1976-01-29', 'F'),
(83, 'Peter', 'Thompson', '1969-03-11', 'M'),
(84, 'Jessica', 'Garcia', '1974-04-18', 'F'),
(85, 'Andrew', 'Martinez', '1968-06-07', 'M'),
(86, 'Angela', 'Robinson', '1972-08-23', 'F'),
(87, 'Kevin', 'Clark', '1971-09-30', 'M'),
(88, 'Michelle', 'Rodriguez', '1975-11-15', 'F'),
(89, 'Ahmed', 'Khan', '1966-12-20', 'M'),
(90, 'Fatima', 'Ali', '1973-02-05', 'F');


/* For Venue table */
INSERT INTO Venue (Venue_ID, Venue_Name, Location)
VALUES
(1, 'Stade de France', 'Paris'),
(2, 'Paris La Défense Arena', 'Paris'),
(3, 'Roland Garros', 'Paris'),
(4, 'Eiffel Tower Stadium', 'Paris'),
(5, 'Aquatics Centre', 'Paris'),
(6, 'Versailles', 'Paris');


/* For Event table */
INSERT INTO Event (Event_ID, Event_Name, Event_Type, World_Record)
VALUES
(1, 'Men\'s 100m sprint', 'Individual', '9.58s'),
(2, 'Men\'s 500m sprint', 'Individual', '57.75s'),
(3, 'Women\'s 100m sprint', 'Individual', '10.49s'),
(4, 'Women\'s 500m sprint', 'Individual', '1:05.34s'),
(5, 'Men\'s long jump', 'Individual', '8.95m'),
(6, 'Women\'s long jump', 'Individual', '7.52m'),
(7, 'Men\'s archery', 'Individual', '700 points'),
(8, 'Women\'s archery', 'Individual', '700 points'),
(9, 'Men\'s 100m freestyle', 'Individual', '46.91s'),
(10, 'Women\'s 100m freestyle', 'Individual', '51.71s'),
(11, 'Men\'s 10m air rifle and pistol', 'Individual', '630.2 points'),
(12, 'Women\'s 10m air rifle and pistol', 'Individual', '634.0 points'),
(13, 'Men\'s 500m Relay', 'Team', '1:57.75s'),
(14, 'Women\'s 500m Relay', 'Team', '2:05.34s'),
(15, 'Men\'s basketball', 'Team', 'N/A'),
(16, 'Women\'s basketball', 'Team', 'N/A'),
(17, 'Women\'s synchronized swimming', 'Team', 'N/A');


/* For Hosted_In table */
INSERT INTO Hosted_In (Event_ID, Venue_ID, Date, Time)
VALUES
(1, 1, '2024-07-24', '10:00:00'),
(2, 1, '2024-07-25', '11:00:00'),
(3, 1, '2024-07-26', '12:00:00'),
(4, 1, '2024-07-27', '13:00:00'),
(5, 1, '2024-07-28', '14:00:00'),
(6, 1, '2024-07-29', '15:00:00'),
(7, 3, '2024-07-30', '10:00:00'),
(8, 3, '2024-07-31', '11:00:00'),
(9, 2, '2024-08-01', '12:00:00'),
(10, 2, '2024-08-02', '13:00:00'),
(11, 6, '2024-08-03', '14:00:00'),
(12, 6, '2024-08-04', '15:00:00'),
(13, 1, '2024-08-05', '10:00:00'),
(14, 1, '2024-08-06', '11:00:00'),
(15, 4, '2024-08-07', '12:00:00'),
(16, 4, '2024-08-08', '13:00:00'),
(17, 5, '2024-08-09', '14:00:00');


/* For Athlete table */
INSERT INTO Athlete (Person_ID, Country_ID, Sport)
VALUES
(1, 1, 'Athletics - Men\'s 100m Sprint'),
(2, 1, 'Athletics - Women\'s 100m Sprint'),
(3, 1, 'Swimming - Men\'s 100m Freestyle'),
(4, 1, 'Swimming - Women\'s 100m Freestyle'),
(5, 2, 'Athletics - Men\'s 100m Sprint'),
(6, 2, 'Athletics - Women\'s 100m Sprint'),
(7, 2, 'Archery - Men\'s Individual'),
(8, 2, 'Archery - Women\'s Individual'),
(9, 3, 'Athletics - Men\'s 100m Sprint'),
(10, 3, 'Athletics - Women\'s 100m Sprint'),
(11, 3, 'Swimming - Men\'s 100m Freestyle'),
(12, 3, 'Swimming - Women\'s 100m Freestyle'),
(13, 4, 'Athletics - Men\'s Long Jump'),
(14, 4, 'Athletics - Women\'s Long Jump'),
(15, 5, 'Athletics - Men\'s 500m Sprint'),
(16, 5, 'Athletics - Women\'s 500m Sprint'),
(17, 6, 'Shooting - Men\'s 10m Air Rifle'),
(18, 6, 'Shooting - Women\'s 10m Air Rifle'),
(19, 7, 'Archery - Men\'s Individual'),
(20, 7, 'Archery - Women\'s Individual'),
(21, 8, 'Swimming - Men\'s 100m Freestyle'),
(22, 8, 'Swimming - Women\'s 100m Freestyle'),
(23, 9, 'Athletics - Men\'s Long Jump'),
(24, 9, 'Athletics - Women\'s Long Jump'),
(25, 10, 'Athletics - Men\'s 500m Sprint'),
(26, 10, 'Athletics - Women\'s 500m Sprint'),
(27, 11, 'Shooting - Men\'s 10m Air Rifle'),
(28, 11, 'Shooting - Women\'s 10m Air Rifle'),
(29, 12, 'Athletics - Men\'s 100m Sprint'),
(30, 12, 'Swimming - Women\'s Synch. Swimming'),
(31, 15, 'Athletics - Men\'s 500m Relay'),
(32, 14, 'Athletics - Men\'s 500m Relay'),
(33, 15, 'Athletics - Men\'s 500m Relay'),
(34, 14, 'Athletics - Men\'s 500m Relay'),
(35, 1, 'Basketball - Men\'s'),
(36, 1, 'Basketball - Women\'s'),
(37, 2, 'Basketball - Men\'s'),
(38, 2, 'Basketball - Women\'s'),
(39, 3, 'Basketball - Men\'s'),
(40, 3, 'Basketball - Men\'s'),
(41, 2, 'Swimming - Women\'s Synch. Swimming'),
(42, 12, 'Swimming - Women\'s Synch. Swimming'),
(43, 12, 'Athletics - Men\'s 100m Sprint'),
(44, 12, 'Athletics - Women\'s 100m Sprint'),
(45, 1, 'Athletics - Men\'s 500m Relay'),
(46, 2, 'Athletics - Men\'s 500m Relay'),
(47, 15, 'Athletics - Men\'s 500m Relay'),
(48, 15, 'Athletics - Men\'s 500m Relay'),
(49, 14, 'Athletics - Men\'s 500m Relay'),
(50, 14, 'Athletics - Men\'s 500m Relay');


/* For Coach table */
INSERT INTO Coach (Person_ID, Country_ID, Coaching_Field)
VALUES
(51, 1, 'Athletics - Sprinting'),
(52, 1, 'Swimming'),
(53, 1, 'Basketball'),
(54, 2, 'Athletics - Sprinting'),
(55, 2, 'Archery'),
(56, 2, 'Basketball'),
(57, 3, 'Athletics - Sprinting'),
(58, 3, 'Swimming'),
(59, 4, 'Athletics - Long Jump'),
(60, 5, 'Athletics - Sprinting'),
(61, 6, 'Shooting'),
(62, 7, 'Archery'),
(63, 8, 'Swimming'),
(64, 9, 'Athletics - Long Jump'),
(65, 10, 'Athletics - Sprinting'),
(66, 11, 'Shooting'),
(67, 12, 'Athletics - Sprinting'),
(68, 12, 'Swimming'),
(69, 13, 'Athletics - Relay'),
(70, 14, 'Athletics - Relay'),
(71, 15, 'Athletics - Relay'),
(72, 8, 'Swimming'),
(73, 2, 'Swimming - Synch. Swimming'),
(74, 12, 'Swimming - Synch. Swimming'),
(75, 1, 'Athletics - Relay'),
(76, 2, 'Athletics - Relay'),
(77, 15, 'Athletics - Relay'),
(78, 14, 'Athletics - Relay'),
(79, 5, 'Athletics - Sprinting'),
(80, 6, 'Shooting'),
(81, 7, 'Archery'),
(82, 9, 'Athletics - Long Jump'),
(83, 3, 'Basketball'),
(84, 2, 'Basketball'),
(85, 12, 'Athletics - Sprinting'),
(86, 12, 'Swimming'),
(87, 15, 'Athletics - Relay'),
(88, 14, 'Athletics - Relay'),
(89, 1, 'Basketball'),
(90, 2, 'Basketball');


/* For Trains table */
INSERT INTO Trains (Coach_ID, Athlete_ID)
VALUES
(51, 1), (51, 2), (51, 45), (51, 35),
(52, 3), (52, 4),
(53, 35), (53, 36),
(54, 5), (54, 6), (54, 46), (54, 37),
(55, 7), (55, 8),
(56, 37), (56, 38),
(57, 9), (57, 10), (57, 39), (57, 40),
(58, 11), (58, 12),
(59, 13), (59, 14),
(60, 15), (60, 16),
(61, 17), (61, 18),
(62, 19), (62, 20),
(63, 21), (63, 22),
(64, 23), (64, 24),
(65, 25), (65, 26),
(66, 27), (66, 28),
(67, 29), (67, 43),
(68, 30), (68, 42),
(73, 41),
(74, 42),
(75, 31), (75, 45),
(76, 46), (76, 5),
(77, 47), (77, 48),
(78, 49), (78, 50),
(81, 39),
(82, 23), (82, 24),
(83, 39), (83, 40),
(84, 37), (84, 38),
(85, 43), (85, 44),
(86, 30), (86, 42),
(87, 47),
(88, 49),
(89, 35),
(90, 37);


/* For Team table */
INSERT INTO Team (Team_ID, Team_Name, Number_Of_Athletes, Country_ID)
VALUES
(1, 'USA Men\'s 500m Relay Team', 4, 1),
(2, 'China Men\'s 500m Relay Team', 4, 2),
(3, 'South Africa Men\'s 500m Relay Team', 4, 15),
(4, 'Kenya Men\'s 500m Relay Team', 4, 14),
(5, 'USA Women\'s 500m Relay Team', 4, 1),
(6, 'China Women\'s 500m Relay Team', 4, 2),
(7, 'South Africa Women\'s 500m Relay Team', 4, 15),
(8, 'Kenya Women\'s 500m Relay Team', 4, 14),
(9, 'USA Men\'s Basketball Team', 5, 1),
(10, 'Japan Men\'s Basketball Team', 5, 3),
(11, 'USA Women\'s Basketball Team', 5, 1),
(12, 'China Women\'s Basketball Team', 5, 2),
(13, 'Japan Women\'s Synch. Swimming Team', 8, 3),
(14, 'South Korea Women\'s Synch. Swimming Team', 8, 12);


/* For Team_Player table */
-- USA Men's 500m Relay Team (Team_ID: 1)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(1, 1, 1),
(31, 1, 2),
(45, 1, 3),
(35, 1, 4);

-- China Men's 500m Relay Team (Team_ID: 2)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(5, 2, 1),
(6, 2, 2),
(37, 2, 3),
(46, 2, 4);

-- South Africa Men's 500m Relay Team (Team_ID: 3)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(47, 3, 1),
(48, 3, 2),
(33, 3, 3),
(31, 3, 4);

-- Kenya Men's 500m Relay Team (Team_ID: 4)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(32, 4, 1),
(34, 4, 2),
(49, 4, 3),
(50, 4, 4);

-- USA Women's 500m Relay Team (Team_ID: 5)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(2, 5, 1),
(4, 5, 2),
(36, 5, 3),
(22, 5, 4);

-- China Women's 500m Relay Team (Team_ID: 6)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(6, 6, 1),
(8, 6, 2),
(38, 6, 3),
(24, 6, 4);

-- South Africa Women's 500m Relay Team (Team_ID: 7)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(50, 7, 1),
(48, 7, 2),
(42, 7, 3),
(44, 7, 4);

-- Kenya Women's 500m Relay Team (Team_ID: 8)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(28, 8, 1),
(30, 8, 2),
(26, 8, 3),
(44, 8, 4);

-- USA Men's Basketball Team (Team_ID: 9)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(35, 9, 1),
(1, 9, 2),
(3, 9, 3),
(9, 9, 4),
(45, 9, 5);

-- Japan Men's Basketball Team (Team_ID: 10)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(39, 10, 1),
(40, 10, 2),
(7, 10, 3),
(19, 10, 4),
(13, 10, 5);

-- USA Women's Basketball Team (Team_ID: 11)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(2, 11, 1),
(4, 11, 2),
(10, 11, 3),
(22, 11, 4),
(16, 11, 5);

-- China Women's Basketball Team (Team_ID: 12)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(6, 12, 1),
(8, 12, 2),
(12, 12, 3),
(24, 12, 4),
(18, 12, 5);

-- Japan Women's Synch. Swimming Team (Team_ID: 13)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(14, 13, 1),
(16, 13, 2),
(20, 13, 3),
(28, 13, 4),
(30, 13, 5),
(34, 13, 6),
(24, 13, 7),
(8, 13, 8);

-- South Korea Women's Synch. Swimming Team (Team_ID: 14)
INSERT INTO Team_Player (Person_ID, Team_ID, Athlete_Number)
VALUES
(38, 14, 1),
(42, 14, 2), -- removed (44, 14, 3),
(30, 14, 4),
(40, 14, 5),
(44, 14, 6),
(18, 14, 7),
(24, 14, 8);


/* For Medals table */
-- Men's 100m Sprint (Event_ID: 1)
INSERT INTO Medal (Medal_ID, Event_ID, Person_ID, Team_ID, Country_ID, Medal_Type)
VALUES
(1, 1, 1, NULL, 1, 'Gold'),
(2, 1, 5, NULL, 2, 'Silver'),
(3, 1, 9, NULL, 3, 'Bronze');

-- Men's 500m Sprint (Event_ID: 2)
INSERT INTO Medal VALUES
(4, 2, 15, NULL, 5, 'Gold'),
(5, 2, 25, NULL, 10, 'Silver'),
(6, 2, 29, NULL, 12, 'Bronze');

-- Women's 100m Sprint (Event_ID: 3)
INSERT INTO Medal VALUES
(7, 3, 2, NULL, 1, 'Gold'),
(8, 3, 6, NULL, 2, 'Silver'),
(9, 3, 10, NULL, 3, 'Bronze');

-- Women's 500m Sprint (Event_ID: 4)
INSERT INTO Medal VALUES
(10, 4, 16, NULL, 5, 'Gold'),
(11, 4, 26, NULL, 10, 'Silver');

-- Men's Long Jump (Event_ID: 5)
INSERT INTO Medal VALUES
(13, 5, 13, NULL, 4, 'Gold'),
(14, 5, 23, NULL, 9, 'Silver');

-- Women's Long Jump (Event_ID: 6)
INSERT INTO Medal VALUES
(16, 6, 14, NULL, 4, 'Gold'),
(17, 6, 24, NULL, 9, 'Silver');

-- Men's Archery (Event_ID: 7)
INSERT INTO Medal VALUES
(19, 7, 7, NULL, 2, 'Gold'),
(20, 7, 19, NULL, 7, 'Silver');

-- Women's Archery (Event_ID: 8)
INSERT INTO Medal VALUES
(22, 8, 8, NULL, 2, 'Gold'),
(23, 8, 20, NULL, 7, 'Silver');

-- Men's 100m Freestyle (Event_ID: 9)
INSERT INTO Medal VALUES
(25, 9, 3, NULL, 1, 'Gold'),
(26, 9, 11, NULL, 3, 'Silver'),
(27, 9, 21, NULL, 8, 'Bronze');

-- Women's 100m Freestyle (Event_ID: 10)
INSERT INTO Medal VALUES
(28, 10, 4, NULL, 1, 'Gold'),
(29, 10, 12, NULL, 3, 'Silver'),
(30, 10, 22, NULL, 8, 'Bronze');

-- Men's 10m Air Rifle and Pistol (Event_ID: 11)
INSERT INTO Medal VALUES
(31, 11, 17, NULL, 6, 'Gold'),
(32, 11, 27, NULL, 11, 'Silver');

-- Women's 10m Air Rifle and Pistol (Event_ID: 12)
INSERT INTO Medal VALUES
(34, 12, 18, NULL, 6, 'Gold'),
(35, 12, 28, NULL, 11, 'Silver');

-- Men's 500m Relay (Event_ID: 13)
INSERT INTO Medal VALUES
(37, 13, NULL, 1, 1, 'Gold'),   -- USA Men's Relay Team
(38, 13, NULL, 2, 2, 'Silver'), -- China Men's Relay Team
(39, 13, NULL, 3, 15, 'Bronze');-- South Africa Men's Relay Team

-- Women's 500m Relay (Event_ID: 14)
INSERT INTO Medal VALUES
(40, 14, NULL, 5, 1, 'Gold'),   -- USA Women's Relay Team
(41, 14, NULL, 6, 2, 'Silver'), -- China Women's Relay Team
(42, 14, NULL, 7, 15, 'Bronze');-- South Africa Women's Relay Team

-- Men's Basketball (Event_ID: 15)
INSERT INTO Medal VALUES
(43, 15, NULL, 9, 1, 'Gold'),   -- USA Men's Basketball Team
(44, 15, NULL, 10, 3, 'Silver');

-- Women's Basketball (Event_ID: 16)
INSERT INTO Medal VALUES
(46, 16, NULL, 11, 1, 'Gold'),  -- USA Women's Basketball Team
(47, 16, NULL, 12, 2, 'Silver');

-- Women's Synchronized Swimming (Event_ID: 17)
INSERT INTO Medal VALUES
(49, 17, NULL, 13, 3, 'Gold'),  -- Japan Synch. Swimming Team
(50, 17, NULL, 14, 12, 'Silver');


/* For Participation table */
-- Men's 100m Sprint (Event_ID: 1)
INSERT INTO Participation (Participation_ID, Person_ID, Team_ID, Country_ID, Event_ID, Result, Result_Type, Ranking)
VALUES
(1, 1, NULL, 1, 1, '9.70s', 'Time', 1),   -- Michael Johnson (USA)
(2, 5, NULL, 2, 1, '9.75s', 'Time', 2),   -- Li Wei (China)
(3, 9, NULL, 3, 1, '9.80s', 'Time', 3),   -- David Smith (Japan)
(4, 29, NULL, 12, 1, '9.85s', 'Time', 4), -- Oliver King (South Korea)
(5, 43, NULL, 12, 1, '9.90s', 'Time', 5); -- Ahmed Hassan (South Korea)

-- Men's 500m Sprint (Event_ID: 2)
INSERT INTO Participation VALUES
(6, 15, NULL, 5, 2, '57.80s', 'Time', 1), -- Lucas Anderson (France)
(7, 25, NULL, 10, 2, '58.20s', 'Time', 2); -- Noah Hall (Brazil)

-- Women's 100m Sprint (Event_ID: 3)
INSERT INTO Participation VALUES
(8, 2, NULL, 1, 3, '10.70s', 'Time', 1),   -- Sarah Williams (USA)
(9, 6, NULL, 2, 3, '10.80s', 'Time', 2),   -- Chen Xi (China)
(10, 10, NULL, 3, 3, '10.90s', 'Time', 3), -- Anna Davis (Japan)
(11, 44, NULL, 12, 3, '11.00s', 'Time', 4); -- Fatima Ahmed (South Korea)

-- Women's 500m Sprint (Event_ID: 4)
INSERT INTO Participation VALUES
(12, 16, NULL, 5, 4, '1:05.50', 'Time', 1), -- Olivia Thomas (France)
(13, 26, NULL, 10, 4, '1:06.00', 'Time', 2); -- Lily Allen (Brazil)

-- Men's Long Jump (Event_ID: 5)
INSERT INTO Participation VALUES
(14, 13, NULL, 4, 5, '8.50m', 'Distance', 1), -- Daniel Wilson (Great Britain)
(15, 23, NULL, 9, 5, '8.40m', 'Distance', 2); -- Ethan Robinson (Canada)

-- Women's Long Jump (Event_ID: 6)
INSERT INTO Participation VALUES
(16, 14, NULL, 4, 6, '7.00m', 'Distance', 1), -- Emma Taylor (Great Britain)
(17, 24, NULL, 9, 6, '6.90m', 'Distance', 2); -- Mia Walker (Canada)

-- Men's Archery (Event_ID: 7)
INSERT INTO Participation VALUES
(18, 7, NULL, 2, 7, '690 points', 'Score', 1), -- Hiroshi Tanaka (China)
(19, 19, NULL, 7, 7, '680 points', 'Score', 2); -- Yuki Yamamoto (Italy)

-- Women's Archery (Event_ID: 8)
INSERT INTO Participation VALUES
(20, 8, NULL, 2, 8, '685 points', 'Score', 1), -- Sakura Suzuki (China)
(21, 20, NULL, 7, 8, '675 points', 'Score', 2); -- Haruka Sato (Italy)

-- Men's 100m Freestyle (Event_ID: 9)
INSERT INTO Participation VALUES
(22, 3, NULL, 1, 9, '47.00s', 'Time', 1), -- David Smith (USA)
(23, 11, NULL, 3, 9, '47.50s', 'Time', 2), -- Wang Li (Japan)
(24, 21, NULL, 8, 9, '48.00s', 'Time', 3); -- Thomas Clark (Australia)

-- Women's 100m Freestyle (Event_ID: 10)
INSERT INTO Participation VALUES
(25, 4, NULL, 1, 10, '52.00s', 'Time', 1), -- Emily Brown (USA)
(26, 12, NULL, 3, 10, '52.50s', 'Time', 2), -- Zhang Mei (Japan)
(27, 22, NULL, 8, 10, '53.00s', 'Time', 3); -- Isabella Lewis (Australia)

-- Men's 10m Air Rifle and Pistol (Event_ID: 11)
INSERT INTO Participation VALUES
(28, 17, NULL, 6, 11, '629.0 points', 'Score', 1), -- Kim Min-Joon (Germany)
(29, 27, NULL, 11, 11, '628.5 points', 'Score', 2); -- Carlos Rodriguez (Russia)

-- Women's 10m Air Rifle and Pistol (Event_ID: 12)
INSERT INTO Participation VALUES
(30, 18, NULL, 6, 12, '633.0 points', 'Score', 1), -- Park Seo-yeon (Germany)
(31, 28, NULL, 11, 12, '632.5 points', 'Score', 2); -- Lucia Lopez (Russia)

-- Men's 500m Relay (Event_ID: 13)
INSERT INTO Participation VALUES
(32, NULL, 1, 1, 13, '1:58.00', 'Time', 1), -- USA Men's Relay Team
(33, NULL, 2, 2, 13, '1:58.50', 'Time', 2), -- China Men's Relay Team
(34, NULL, 3, 15, 13, '1:59.00', 'Time', 3), -- South Africa Men's Relay Team
(35, NULL, 4, 14, 13, '1:59.50', 'Time', 4); -- Kenya Men's Relay Team

-- Women's 500m Relay (Event_ID: 14)
INSERT INTO Participation VALUES
(36, NULL, 5, 1, 14, '2:05.00', 'Time', 1), -- USA Women's Relay Team
(37, NULL, 6, 2, 14, '2:05.50', 'Time', 2), -- China Women's Relay Team
(38, NULL, 7, 15, 14, '2:06.00', 'Time', 3), -- South Africa Women's Relay Team
(39, NULL, 8, 14, 14, '2:06.50', 'Time', 4); -- Kenya Women's Relay Team

-- Men's Basketball (Event_ID: 15)
INSERT INTO Participation VALUES
(40, NULL, 9, 1, 15, '85-80', 'Score', 1), -- USA Men's Basketball Team
(41, NULL, 10, 3, 15, '80-85', 'Score', 2); -- Japan Men's Basketball Team

-- Women's Basketball (Event_ID: 16)
INSERT INTO Participation VALUES
(42, NULL, 11, 1, 16, '75-70', 'Score', 1), -- USA Women's Basketball Team
(43, NULL, 12, 2, 16, '70-75', 'Score', 2); -- China Women's Basketball Team

-- Women's Synchronized Swimming (Event_ID: 17)
INSERT INTO Participation VALUES
(44, NULL, 13, 3, 17, '96.5 points', 'Score', 1), -- Japan Synch. Swimming Team
(45, NULL, 14, 12, 17, '95.0 points', 'Score', 2); -- South Korea Synch. Swimming Team


