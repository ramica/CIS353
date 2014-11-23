SPOOL project.out
SET ECHO ON
/*
CIS 353 - Database Design Project
Daniel Kelch
John O'Brien
Marcus Hughes
Travis Keel
Alen Ramic
*/
--

SET FEEDBACK OFF
--
DROP TABLE Event;
--
CREATE TABLE Event
(
eid INTEGER,
date CHAR(10) NOT NULL,
empty_seats INTEGER NOT NULL,
-- Constraints --
CONSTRAINT EC1 PRIMARY KEY (eid),
CONSTRAINT EC2 CHECK (empty_seats <= 10,000 AND empty_seats >= 0),
CONSTRAINT EC3 CHECK (date LIKE '%/%/%'),

)

DROP TABLE Sponsors;
--
CREATE TABLE Sponsors
(
eid INTEGER
sponsor_name CHAR
)


DROP TABLE Athlete;
--
CREATE TABLE Athlete
(
AID INTEGER,
lname CHAR(10) NOT NULL,
fname CHAR(10) NOT NULL,
CONSTRA


)

--
SET FEEDBACK ON
COMMIT
--
COMMITy
SPOOL OFF
--
