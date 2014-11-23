SPOOL project.out
SET ECHO ON
/**************************************
CIS 353 - Database Design Project
   Daniel Kelch
   John O'Brien
   Marcus Hughes
   Travis Keel
   Alen Ramic
**************************************/
--
SET FEEDBACK OFF
--
--
DROP TABLE Event;
-- ------------------------------------
CREATE TABLE Event
(
eid INTEGER,
event_date CHAR(10) NOT NULL,
empty_seats INTEGER NOT NULL,
-- ------------------------------------
-- Constraints
-- ------------------------------------
CONSTRAINT EC1 PRIMARY KEY (eid),
CONSTRAINT EC2 CHECK (empty_seats <= 10,000 AND empty_seats >= 0),
CONSTRAINT EC3 CHECK (event_date LIKE '%/%/%')
);
--
--
DROP TABLE Sponsors;
--
CREATE TABLE Sponsors
(
eid INTEGER,
sponsor_name CHAR NOT NULL,
-- ------------------------------------
-- Constraints
-- ------------------------------------
CONSTRAINT SC1 PRIMARY KEY (eid, sponsor_name),
CONSTRAINT SC2 FOREIGN KEY (eid) REFERENCES Event(eid)
    ON DELETE CASCADE
    DEFERABLE INITIALLY DEFERRED
);
--
--
DROP TABLE Athlete;
--
CREATE TABLE Athlete
(
aid INTEGER,
lname CHAR(10) NOT NULL,
fname CHAR(10) NOT NULL,
-- ------------------------------------
-- Constraints
-- ------------------------------------
CONSTRAINT AC1 PRIMARY KEY (aid),
CONSTRAINT AC2 CHECK()
);
--
--
DROP TABLE Country;
--
CREATE TABLE Country
(
cname CHAR(15) NOT NULL,
population INTEGER,
-- ------------------------------------
-- Constraints
-- ------------------------------------
CONSTRAINT CC1 PRIMARY KEY (cname),
);
--
--
DROP TABLE Spectator;
--
CREATE TABLE Spectator
(
sid INTEGER
lname CHAR(10) NOT NULL,
fname CHAR(10) NOT NULL,
-- ------------------------------------
-- Constraints
-- ------------------------------------
CONSTRAINT CC1 PRIMARY KEY (sid),
);
--
SET FEEDBACK ON
COMMIT
--
COMMIT
SPOOL OFF
--
