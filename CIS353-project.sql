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
-- ------------------------------------
-- Event table
-- ------------------------------------
DROP TABLE Event;
-- 
CREATE TABLE Event
(
eid INTEGER,
event_date date NOT NULL,
empty_seats INTEGER NOT NULL,
--
-- EC1: The event id (eid) is the primary key of Event
CONSTRAINT EC1 PRIMARY KEY (eid),
-- EC2: The number of empty seats must be between 0 and 10,000
CONSTRAINT EC2 CHECK (empty_seats <= 10000 AND empty_seats >= 0),
-- EC3: Checks that the date of the event is within a valid range
-- for the 2016 summer Olympics (08/05/2016 - 08/21/2016)
CONSTRAINT EC3 CHECK (event_date BETWEEN date '2016-08-05' AND date '2016-08-21')
);
--
-- ------------------------------------
-- Sponsors table
-- ------------------------------------
DROP TABLE Sponsors;
--
CREATE TABLE Sponsors
(
eid INTEGER,
sponsor_name CHAR NOT NULL,
--
--
CONSTRAINT SC1 PRIMARY KEY (eid, sponsor_name),
CONSTRAINT SC2 FOREIGN KEY (eid) REFERENCES Event(eid)
    ON DELETE CASCADE
    DEFERABLE INITIALLY DEFERRED
);
--
-- ------------------------------------
-- Athlete table
-- ------------------------------------
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
-- ------------------------------------
-- Country table
-- ------------------------------------
DROP TABLE Country;
--
CREATE TABLE Country
(
cname CHAR(15) NOT NULL,
population INTEGER,
--
--
CONSTRAINT CC1 PRIMARY KEY (cname),
);
--
-- ------------------------------------
-- Spectator table
-- ------------------------------------
DROP TABLE Spectator;
--
CREATE TABLE Spectator
(
sid INTEGER
lname CHAR(10) NOT NULL,
fname CHAR(10) NOT NULL,
--
--
CONSTRAINT CC1 PRIMARY KEY (sid),
);
SET FEEDBACK OFF
INSERT INTO EVENTS VALUES (34567,06/12/2016,987);
INSERT INTO EVENTS VALUES (67895, 06/12/2016, 67);
INSERT INTO EVENTS VALUES (34598, 06/09/2016 , 5);
--
INSERT INTO COUNTRY VALUES( 'United States' , 319134000);
INSERT INTO COUNTRY VALUES('China', 1368030000 );
INSERT INTO COUNTRY VALUES('India', 1262860000 );
INSERT INTO COUNTRY VALUES('Indonesia', 252164800 );
INSERT INTO COUNTRY VALUES('Brazil', 203481000 );
INSERT INTO COUNTRY VALUES('Pakistan', 18829000 );
INSERT INTO COUNTRY VALUES('Nigeria' 178517000 );
INSERT INTO COUNTRY VALUES('Bangladesh', 157362000 );
INSERT INTO COUNTRY VALUES('Russia', 146146200 );
INSERT INTO COUNTRY VALUES('Japan', 127090000 );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES('Mexico',119713 );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES();
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES( );
INSERT INTO COUNTRY VALUES( );
--
SET FEEDBACK ON
COMMIT
--
COMMIT
SPOOL OFF
--
