/*
 * Author: Sakthi Santhosh
 * Created on: 02/05/2024
 */
SELECT * FROM cd.facilities;

SELECT name, membercost FROM cd.facilities;

SELECT * FROM cd.facilities where membercost > 0;

SELECT facid, 'name', membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND membercost < monthlymaintenance / 50;

SELECT *
FROM cd.facilities
WHERE 'name' LIKE '%tennis%';

SELECT *
FROM cd.facilities
WHERE facid IN (1, 5);

SELECT "name",
CASE WHEN monthlymaintenance > 100 THEN 'expensive' ELSE 'cheap' END AS 'cost'
FROM cd.facilities;

SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate >= '2012-09-01';

SELECT DISTINCT surname
FROM cd.members
ORDER BY surname
LIMIT 10;

SELECT surname FROM cd.members
UNION DISTINCT
SELECT name FROM cd.facilities;

SELECT MAX(joindate) AS latest
FROM cd.members;

SELECT firstname, surname, joindate
FROM cd.members
WHERE joindate = (SELECT MAX(joindate) FROM cd.members);
