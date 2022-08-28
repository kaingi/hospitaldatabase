CREATE DATABASE airportDatabase
USE airportDatabase
Drop database airportdatabase
CREATE TABLE Customers(
 Nid INT PRIMARY KEY,
 cName CHAR(50),
 phoneNumber INTEGER,
 DepartureTime VARCHAR(10),
 ArrivalTime VARCHAR(10),
 terminalfrom CHAR(50),
 terminalTo CHAR(50)
)
/* drop table customers*/
DROP TABLE Customers

INSERT INTO Customers
VALUES
(1316,'Felix Kiragu',0101,'0600hrs','0700hrs','Nairobi','Muranga'),
(1317,'Derick Obegi',0102,'0800hrs','0900hrs','Nairobi','Meru'),
(1318,'Frankline Anyira',0103,'0800hrs','0900hrs','Nairobi','Nyeri'),
(1319,'Philip Ndei',0104,'0800hrs','0900hrs','Nairobi','Eldoret'),
(1320,'Abdirahman yunis',0105,'0800hrs','1000hrs','Nairobi','Kericho'),
(1321,'Felix Ndungu',0106,'0500hrs','0700hrs','Nairobi','Turkana'),
(1322,'Teddy Kimilu',0107,'0600hrs','0800hrs','Nairobi','Kampala'),
(1323,'Brian Kulla',0108,'1300hrs','1400hrs','Nairobi','Adis Ababa'),
(1324,'Kelvin Kiema',0109,'1300hrs','1500hrs','Nairobi','Arusha'),
(1325,'Martin Kariuki',0110,'1400hrs','1600hrs','Nairobi','Dar-es-salam'),
(1326,'Samater Aden',0111,'1600hrs','1900hrs','Nairobi','Antananarivo'),
(1327,'Samsom Kungu',0112,'1500hrs','1900hrs','Nairobi','Johnesburg'),
(1328,'Juarez Gaccu',0113,'1700hrs','1800hrs','Nairobi','Kisumu'),
(1329,'Brian Muli',0114,'1800hrs','1900hrs','Nairobi','Mombasa'),
(1330,'Gerald Muruthi',0115,'1900hrs','2000hrs','Nairobi','Kwale'),
(1331,'Adrian Ochieng',0116,'1800hrs','2000hrs','Nairobi','Addis Ababa'),
(1332,'Alvin Kuria',0117,'1800hrs','2100hrs','Nairobi','Cairo'),
(1333,'David Abira',0118,'1800hrs','2000hrs','Nairobi','Lagos'),
(1334,'George Maina',0119,'1900hrs','2100hrs','Nairobi','Accra'),
(1335,'Erick Muturi',0120,'2100hrs','2200hrs','Nairobi','Kisumu'),
(1336,'Bet kipruto',0121,'2000hrs','2200hrs','Nairobi','Kigali'),
(1337,'Leone Ochieng',0122,'2100hrs','2300hrs','Nairobi','Bujumbura'),
(1338,'Joshua Mutua',0123,'1900hrs','2100hrs','Nairobi','Moshi'),
(1339,'Martin Kimeu',0124,'1800hrs','2000hrs','Nairobi','Zanzibar'),
(1340,'Martin Nduru',0125,'1800hrs','2100hrs','Nairobi','Cape town')
/* Selecting from customer table*/
SELECT*
FROM Customers
SELECT Nid,cName
FROM Customers;
SELECT count(*)
FROM Customers;
SELECT Nid,cName
FROM Customers
WHERE Nid=1316

USE airportdatabase
CREATE TABLE Manager(
ManagerId INT PRIMARY KEY,
ManagerName CHAR(20)
)
/*Drop manager atble*/
DROP TABLE Manager

INSERT INTO Manager
VALUES
(1,'James Maina')

USE airportdatabase
CREATE TABLE Supervisor(
SuperId INT NOT NULL PRIMARY KEY,
SupName CHAR(50),
departmentId VARCHAR(40),
departmentName CHAR(50),
ManagerId INT FOREIGN KEY REFERENCES Manager(ManagerId )
)

/*alter in data in supervisor*/
ALTER TABLE Supervisor
ADD Email VARCHAR(25);

INSERT INTO Supervisor
VALUES
(12,'Gatonye','Cl4','Cleaners',1),
(13,'Munene','Sec5','Security',1),
(14,'Julius','Eng6','Engineer',1),
(15,'Christopher','P7','Pilot',1)
/*Select from supervisor table*/
SELECT*
FROM Supervisor;

SELECT SuperId,SupName
FROM Supervisor;

SELECT count(*)
FROM Supervisor;

/*update supervisor*/
UPDATE Supervisor
SET supName='Kimani'
WHERE SuperId=13;

SELECT *
FROM Supervisor;


USE airportdatabase
CREATE TABLE Staff(
staffId INT NOT Null PRIMARY KEY,
staffName CHAR(50),
staffSalary INTEGER,
SuperId INT FOREIGN KEY REFERENCES Supervisor
)
DROP TABLE Staff

INSERT INTO Staff
VALUES
(1401,'Darine',10000,12),
(1402,'Paul',10000,12),
(1403,'Kaingi',10000,12),
(1404,'Ephantus',10000,12),
(1405,'Njeri',15000,13),
(1406,'Wambui',15000,13),
(1407,'Philip',15000,13),
(1408,'Brayo ',15000,13),
(1409,'Gitogo',15000,13),
(1410,'Murira',15000,13),
(1411,'Muchiri',30000,14),
(1412,'Charity',30000,14),
(1413,'Gladys',30000,14),
(1414,'Catherine',30000,14),
(1415,'Haron',30000,14),
(1416,'Mwangi',40000,15),
(1417,'Walter',40000,15),
(1418,'Bidan',40000,15),
(1419,'Zakayo',40000,15),
(1420,'Titus',40000,15),
(1421,'Luna',40000,15),
(1422,'Khadija',10000,12),
(1423,'Rodgers',10000,12),
(1424,'Emmanuel',10000,12),
(1425,'Regina',10000,12)
/*Seleect from staff*/
SELECT*
FROM Staff;


USE airportdatabase
CREATE TABLE finance(
TransactionCode VARCHAR(10) NOT NULL PRIMARY KEY,
ModeOfPayment CHAR(50),
AmountPaid INTEGER ,
customerId INT FOREIGN KEY REFERENCES Customers( Nid)
)
DROP TABLE finance
INSERT INTO finance     /*inserting values into finance*/
VALUES
('ABC','Mpesa',4000,1316),
('BCD','Mpesa',5000,1317),
('ADC','Mpesa',6000,1318),
('ACE','Mpesa',7000,1319),
('EFG','Mpesa',8000,1320),
('GCA','Mpesa',9000,1321),
('ACD','Bank',10000,1322),
('AFG','Bank',11000,1323),
('DFG','Bank',12000,1324),
('DFF','Bank',13000,1325),
('DFE','Bank',14000,1326),
('FED','Bank',15000,1327),
('XYZ','Bank',16000,1328),
('AYZ','Mpesa',17000,1329),
('AXY','Mpesa',18000,1330),
('XAY','Bank',19000,1331),
('ABY','Mpesa',20000,1332),
('AZB','Bank',21000,1333),
('AFB','Mpesa',22000,1334),
('AEB','Mpesa',23000,1335),
('AED','Mpesa',24000,1336),
('MNO','Mpesa',25000,1337),
('ONA','Bank',26000,1338),
('ONB','Bank',27000,1339),
('OCA','Bank',27000,1340)

/*Delete from finance table*/
DELETE FROM finance
WHERE TransactionCode='OCA';

/*Select from finance*/
SELECT *
FROM finance;

SELECT TransactionCode,AmountPaid,customerId
FROM finance;

/*count */
SELECT count(*)
FROM finance;

/*Average of cash in the finance*/
SELECT AVG(AmountPaid)
FROM finance;

/*Sum from the amount paid in the finace*/
SELECT SUM(AmountPaid)
FROM finance;
