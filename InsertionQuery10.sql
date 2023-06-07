USE HospitalSystem

-- Pationinfo insertion
INSERT INTO Patientinfo 
VALUES (10001,'Abdelrhaman Abass','Abdelrhman','2003-06-06','M','A6 Spruce Street','Damanhour City','Beheira','Egypt',
'04307','0109876345612',65,'Suffering from cold and cough', '2012-06-12 14:00:00');
INSERT INTO Patientinfo 
VALUES (10002,'Mahmoud hussin','Mahmoud','1986-04-12','M','B9 Prospect Street','Alex City','ALex','Egypt',
'06306','0119876275612',70,'High Fever', '2013-06-08 15:00:00');
INSERT INTO Patientinfo 
VALUES (10003,'John Cooper','John','1978-06-15','M','C6 Thorne Street','Alex City','ALex','Egypt',
'0856','0109876782612',78,'Throat pain', '2014-02-10 18:00:00');
INSERT INTO Patientinfo 
VALUES (10004,'Michelle Stanley','Michelle','1998-08-09','M','A4 Laven Street','Damanhour City','Beheira','Egypt',
'02307','0159901345612',60,'Stomach ache', '2015-05-12 10:00:00');
INSERT INTO Patientinfo 
VALUES (10005,'Nermin Ahmed','Nermin','1996-03-25','F','A6 Enble Street','Beni Suef','Beni Suef','Egypt',
'02307','0103467345612',60,'Heart ache', '2016-03-08 11:00:00');
INSERT INTO Patientinfo 
VALUES (10006,'Hanny Khub','Honey','1985-06-20','F','202 Enble Street','Giza City','Giza','Egypt',
'03307','0103423445612',72,'Head ache', '2016-05-10 11:00:00');
INSERT INTO Patientinfo 
VALUES (10007,'Sameul Honey','Sameul','1988-07-20','M','201 Enle Street','Giza City','Giza','Egypt',
'03307','0103421235612',63,'Head ache', '2016-05-20 11:00:00');

-- Doc_design insertion 
insert into Doc_design values('Jr',100000,1000);
insert into Doc_design values('Sr',200000,2000);
insert into Doc_design values('Assistant',300000,3000);
insert into Doc_design values('Surgeon',400000,4000);
insert into Doc_design values('Specialist',500000,5000);


-- Doc_staff insertion 
insert into Doc_staff values(101,202);
insert into Doc_staff values(102,201);
insert into Doc_staff values(103,204);
insert into Doc_staff values(104,203);
insert into Doc_staff values(105,205);


-- Doctorinfo insertion 
insert into Doctorinfo values(101,'Mahmoud mohamed','Mahmoud','M','212 Hopkins Street','Hoboken','Alexandria','Egypt',08234,'7623569801','Jr');
insert into Doctorinfo values(102,'Heba younis','Heba','F','13 Hopkins Street','Hoboken','Cairo','Egypt',08454,'7456569801','Sr');
insert into Doctorinfo values(103,'Ahmed younis','Ahmed younis','M','2 Ins Street','Union City','Cairo','Egypt',02334,'7698013471','Assistant');
insert into Doctorinfo values(104,'Abdelrhman Abass','Abdelrhman','M','224 Central Street','Jersey City','Cairo','Egypt',08267,'7690169801','Surgeon');
insert into Doctorinfo values(105,'Hana Ahmed','Camy','F','2 Hopkins Street','Hoboken','Alexandria','Egypt',08234,'7623123801','Specialist');


-- Staff_dept_charge insertion 
insert into Staff_dept_charge values ('Nurse', 100);
insert into Staff_dept_charge values ('Accountant', 200);
insert into Staff_dept_charge values ('Wardboy', 80);
insert into Staff_dept_charge values ('Cleaning', 50);


-- Staffinfo insertion 
insert into Staffinfo values(201,'Nour mansour','Nour','Nurse','F','A2 Labr Street','Hoboken','Giza','Egypt','78342','6527839789');
insert into Staffinfo values(202,'Ahmed kamal','Ahmed','Wardboy','M','B6 Lincholn Street','Hoboken','Cairo','Egypt','78342','4563839789');
insert into Staffinfo values(203,'Fatama mahmoud','Fatama','Nurse','F','L1 Central Street','Jersey City','Giza','Egypt','07307','6528912789');
insert into Staffinfo values(204,'Mohamed okda','Mohamed','Wardboy','M','B8 Labr Street','Hoboken','Cairo','Egypt','78342','6521234789');
insert into Staffinfo values(205,'Hanin mohamed','Hanin','Nurse','F','B9 Hopkins Street','Union City','Damietta','Egypt','34342','8977839789');
insert into Staffinfo values(206,'Yousria mahmoud','Yousria','Accountant','F','212 Hopkins Street','Union City','Damietta','Egypt','32342','8990459789');


-- Labinfo insertion
INSERT INTO Labinfo VALUES (1, 70, '2012-06-12 18:00:00', 'Few Symptoms of Malaria', 'More tests required', '', 450);
INSERT INTO Labinfo VALUES (2, 75, '2013-06-08 19:00:00', 'Malaria', 'No more tests required', '', 450);
INSERT INTO Labinfo VALUES (3, 80, '2014-02-10 20:00:00', 'Tonsils', 'More tests required', '', 300);
INSERT INTO Labinfo VALUES (4, 61, '2015-05-12 13:00:00', 'Symptoms for Cancer', 'More tests required', '', 650);
INSERT INTO Labinfo VALUES (5, 65, '2016-03-08 14:00:00', 'Heart blockage', 'More tests required', '', 650);
INSERT INTO Labinfo VALUES (6, 73, '2016-05-10 13:00:00', 'Head ache', 'No more tests required', '', 450);


-- Assist insertion
insert into Assist values(1,10001,102,'2012-06-12 18:00:00');
insert into Assist values(2,10002,101,'2013-06-08 19:00:00');
insert into Assist values(3,10003,102,'2014-02-10 20:00:00');
insert into Assist values(4,10004,105,'2015-05-12 13:00:00');
insert into Assist values(5,10005,104,'2016-03-08 14:00:00');
insert into Assist values(6,10006,101,'2016-05-10 13:00:00');


-- Roomcharge insertion 
insert into Roomcharge values('Single',10000);
insert into Roomcharge values('Duplex',5000);
insert into Roomcharge values('Triplex',1000);
insert into Roomcharge values('Common',500);


-- Roominfo insertion 
insert into Roominfo values(001,'Duplex',2,2,'occupied',2);
insert into Roominfo values(002,'Single',1,1,'occupied',2);
insert into Roominfo values(003,'Duplex',2,2,'occupied',2);
insert into Roominfo values(004,'Triplex',3,0,'vacant',1);
insert into Roominfo values(005,'Common',8,0,'vacant',1);


-- Inpatientinfo insertion
insert into Inpatientinfo values(001,10001,'2012-06-13 10:00:00','A',30);
insert into Inpatientinfo values(001,10001,'2012-07-12 14:00:00','D',30);
insert into Inpatientinfo values(001,10002,'2013-06-09 15:00:00','A',30);
insert into Inpatientinfo values(001,10002,'2013-07-08 14:00:00','D',30);
insert into Inpatientinfo values(003,10003,'2014-02-11 18:00:00','A',2);
insert into Inpatientinfo values(003,10003,'2014-02-13 14:00:00','D',2);
insert into Inpatientinfo values(002,10004,'2015-05-13 10:00:00','A',365);
insert into Inpatientinfo values(002,10004,'2016-05-12 14:00:00','D',365);
insert into Inpatientinfo values(003,10005,'2016-03-09 11:00:00','A',30);
insert into Inpatientinfo values(003,10005,'2016-04-08 18:00:00','D',30);


-- Outpatientinfo insertion
insert into Outpatientinfo values(10006,'2016-05-10 15:00:00');
insert into Outpatientinfo values(10001,'2012-07-13 10:00:00');
insert into Outpatientinfo values(10001,'2012-08-12 14:00:00');
insert into Outpatientinfo values(10002,'2013-09-09 15:00:00');
insert into Outpatientinfo values(10002,'2013-08-08 14:00:00');
insert into Outpatientinfo values(10003,'2014-02-13 18:00:00');
insert into Outpatientinfo values(10003,'2014-02-15 14:00:00');
insert into Outpatientinfo values(10004,'2016-05-13 10:00:00');
insert into Outpatientinfo values(10004,'2017-05-12 14:00:00');
insert into Outpatientinfo values(10005,'2016-04-09 11:00:00');
insert into Outpatientinfo values(10005,'2016-05-08 18:00:00');

-- Medicalcharge insertion
INSERT INTO Medicalcharge VALUES (1, 2000, 450, 100, 1000, 5000, 0, '2012-07-12 14:00:00');
INSERT INTO Medicalcharge VALUES (2, 1000, 450, 80, 1000, 5000, 0, '2013-07-08 14:00:00');
INSERT INTO Medicalcharge VALUES (3, 2000, 300, 100, 1000, 5000, 0, '2014-02-13 14:00:00');
INSERT INTO Medicalcharge VALUES (4, 5000, 650, 100, 2000, 50000, 10000, '2016-05-12 14:00:00');
INSERT INTO Medicalcharge VALUES (5, 4000, 650, 100, 2000, 100000, 5000, '2016-04-08 18:00:00');
INSERT INTO Medicalcharge VALUES (6, 1000, 450, 80, 1000, 5000, 0, '2016-05-10 15:00:00');

-- Bill_Pat insertion 
INSERT INTO Bill_Pat VALUES (1, 10001);
INSERT INTO Bill_Pat VALUES (2, 10002);
INSERT INTO Bill_Pat VALUES (3, 10003);
INSERT INTO Bill_Pat VALUES (4, 10004);
INSERT INTO Bill_Pat VALUES (5, 10005);
INSERT INTO Bill_Pat VALUES (6, 10006);

-- Schedinfo insertion 
INSERT INTO Schedinfo VALUES (001, 10001, 102, '2012-06-12', '2012-06-11 14:00:00');
INSERT INTO Schedinfo VALUES (002, 10002, 101, '2013-06-08', '2013-06-07 15:00:00');
INSERT INTO Schedinfo VALUES (003, 10003, 102, '2014-02-10', '2014-02-08 18:00:00');
INSERT INTO Schedinfo VALUES (004, 10004, 105, '2015-05-12', '2015-05-11 10:00:00');
INSERT INTO Schedinfo VALUES (005, 10006, 101, '2016-05-10', '2016-05-09 11:00:00');
INSERT INTO Schedinfo VALUES (006, 10007, 101, '2016-05-21', '2016-05-20 11:00:00');
