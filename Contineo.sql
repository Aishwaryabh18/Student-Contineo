drop table dept cascade constraints;
drop table student_profile cascade constraints;
drop table teacher cascade constraints;
drop table feedback cascade constraints;
drop table coursee cascade constraints;
drop table  exam_history cascade constraints;
drop table reevaluation cascade constraints;
drop table vikas_session cascade constraints;
drop table feechallan cascade constraints;
drop table teaches cascade constraints;


create table dept
(
dno int primary key,
dname varchar(20),
d_head varchar(20)
);

insert into dept values (10,'CS','Manjula');
insert into dept values (11,'CIVIL','Geeta');
insert into dept values (12,'EC','Prasad');
insert into dept values (13,'MECH','Sangam');
insert into dept values (14,'EE','Pooja');
insert into dept values (15,'BIOTECH','Prisha');


create table student_profile
(
susn int  primary key,
sname varchar(15),
sdob VARCHAR(20),
ssem number,
sdiv VARCHAR(5),
sdnno int references dept(dno)
);

insert into student_profile values (101, 'Sneha', '15-08-2001',2,'A',10);
insert into student_profile values (102, 'Anjali', '20-08-2002',2,'B',11);
insert into student_profile values (103, 'Shiva', '04-05-2002',2,'C',10);
insert into student_profile values (104, 'Divya', '12-08-2001',2,'B',12);
insert into student_profile values (105, 'Aishwarya', '30-09-2002',2,'D',12);
insert into student_profile values (106, 'Megha', '24-10-2002',2,'A',11);
insert into student_profile values (107, 'Rahul', '14-12-2001',2,'C',13);
insert into student_profile values (108, 'Tina', '18-05-2002',2,'B',14);
insert into student_profile values (109, 'Neha', '29-07-2002',2,'A',15);
insert into student_profile values (110, 'Riyan', '12-07-2001',4,'B',13);
insert into student_profile values (111, 'Anvi', '28-08-2000',4,'D',15);
insert into student_profile values (112, 'Ajay', '29-06-2000',4,'C',15);
insert into student_profile values (113, 'Vijay', '10-05-2000',4,'C',10);
insert into student_profile values (114, 'Aditya', '15-01-2001',4,'A',11);
insert into student_profile values (115, 'Raman', '18-09-2000',4,'D',12);
insert into student_profile values (116, 'Ishitha', '02-02-2000',4,'B',14);
insert into student_profile values (117, 'Ravi', '19-06-2001',4,'B',12);
insert into student_profile values (118, 'Anita', '25-05-2000',6,'C',13);
insert into student_profile values (119, 'Darshan', '04-12-1999',6,'A',12);
insert into student_profile values (120, 'Aaryan', '05-11-1999',6,'C',11);
insert into student_profile values (121, 'Sanop', '19-10-2000',6,'A',12);
insert into student_profile values (122, 'Abhishek', '17-08-1999',6,'B',10);
insert into student_profile values (123, 'Mishti', '27-04-2000',6,'B',14);
insert into student_profile values (124, 'Gayatri', '29-03-1999',6,'A',15);
insert into student_profile values (125, 'Harsha', '28-02-2000',6,'D',13);

insert into student_profile values (126, 'Shilpa', '15-10-2000',6,'A',10);
insert into student_profile values (127, 'Abhi', '15-05-1999',6,'B',11);
insert into student_profile values (128, 'kuhu', '27-10-2001',4,'B',12);
insert into student_profile values (129, 'prerana', '30-03-1999',6,'A',13);
insert into student_profile values (130, 'komal', '28-02-2001',4,'D',14);

insert into student_profile values (131, 'ambika', '20-01-2001',4,'A',12);
insert into student_profile values (132, 'madhu', '15-05-1999',6,'C',11);
insert into student_profile values (133, 'misba', '17-12-2000',4,'C',13);
insert into student_profile values (134, 'shivani', '30-11-1999',6,'A',15);
insert into student_profile values (135, 'khushi', '28-12-2000',6,'D',10);

insert into student_profile values (136, 'deepak', '16-08-2001',2,'B',10);
insert into student_profile values (137, 'Ashu', '27-08-2002',2,'A',11);
insert into student_profile values (138, 'Meg', '14-05-2002',2,'C',10);
insert into student_profile values (139, 'Lisa', '22-08-2001',2,'A',12);
insert into student_profile values (140, 'Abdul', '31-09-2002',2,'D',12);

insert into student_profile values (141, 'Raza', '14-10-2002',2,'D',11);
insert into student_profile values (142, 'Zara', '24-12-2001',2,'C',13);
insert into student_profile values (143, 'Rahul', '08-05-2002',2,'B',14);
insert into student_profile values (144, 'Anjali', '19-07-2002',2,'A',15);
insert into student_profile values (145, 'Ayan', '22-07-2001',4,'C',13);

insert into student_profile values (146, 'Vijeta', '11-05-2000',4,'C',10);
insert into student_profile values (147, 'Shankar', '25-01-2001',4,'A',11);
insert into student_profile values (148, 'Rajiv', '28-09-2000',4,'D',12);
insert into student_profile values (149, 'Isha', '12-02-2000',4,'B',14);
insert into student_profile values (150, 'Rashmi', '29-06-2001',4,'B',15);



create table teacher
(
tid int primary key,
tname varchar(15),
tgender char,
temailid varchar(20),
mentor_ssn int,
tdnno int references dept(dno)
);

insert into teacher values(1,'Prakash','m','iprakash@gmail.com',1,10);
insert into teacher values(2,'Shilpa','f','shilpa01@gmail.com','',10);
insert into teacher values(3,'Shakshi','f','sk@gmail.com','',10);
insert into teacher values(4,'Shrinivas','m','iamshrii@gmail.com',4,10);
insert into teacher values(5,'Kiran','m','kiran@gmail.com',5,10);
insert into teacher values(6,'Suma','f','suma19@gmail.com','',11);
insert into teacher values(7,'Shankar','m','patils@gmail.com',7,11);
insert into teacher values(8,'Shashi','m','shashik@gmail.com','',11);
insert into teacher values(9,'SakshiiS','f','sks@gmail.com','',11);
insert into teacher values(10,'Aruna','f','iaruna18@gmail.com',10,11);
insert into teacher values(11,'Maitri','f','imaitra18@gmail.com',11,12);
insert into teacher values(12,'Sushma','f','isushma18@gmail.com',12,12);
insert into teacher values(13,'Meghana','f','imeghana18@gmail.com','',12);
insert into teacher values(14,'Rakesh','m','irakesh18@gmail.com','',14);
insert into teacher values(15,'Mohan','m','imohan18@gmail.com','',14);
insert into teacher values(16,'Mahesh','m','imh20@gmail.com',16,14);
insert into teacher values(17,'Ravi','m','RR@gmail.com','',15);
insert into teacher values(18,'Tanu','f','Tanu202@gmail.com',18,15);
insert into teacher values(19,'Roopa','f','RP2121@gmail.com',19,15);
insert into teacher values(20,'Shobha','f','sbj1978@gmail.com','',15);
insert into teacher values(21,'Jaya','f','jayabh@gmail.com',21,10);
insert into teacher values(22,'Shivu','m','Shivkm@gmail.com','',13);
insert into teacher values(23,'Samarth','m','ssm89@gmail.com','',13);
insert into teacher values(24,'Om','m','iamom100@gmail.com',24,13);
insert into teacher values(25,'Kavita','f','kavitaaa@gmail.com','',13);




create table feedback
(
fusn int references student_profile(susn), 
ftid int references teacher(tid),
Teaching_pts int, 
following_lp int,
doubt_clr_pts int, 
interacting_pts int
);


insert into feedback values (101,1,8,9,10,8);
insert into feedback values (101,2,10,8,9,9);
insert into feedback values (101,4,9,8,9,10);
insert into feedback values (102,7,9,9,9,10);
insert into feedback values (103,2,7,9,10,8);
insert into feedback values (103,5,8,9,8,10);
insert into feedback values (104,11,9,10,8,9);
insert into feedback values (104,13,10,8,10,10);
insert into feedback values (104,12,9,8,9,10);
insert into feedback values (105,11,10,8,9,8);
insert into feedback values (105,12,9,8,10,7);
insert into feedback values (105,13,9,9,10,10);
insert into feedback values (106,7,8,8,9,9);
insert into feedback values (106,6,10,8,9,9);
insert into feedback values (107,22,10,8,8,7);
insert into feedback values (107,25,10,8,8,7);
insert into feedback values (108,14,10,8,10,10);
insert into feedback values (108,15,10,9,10,10);
insert into feedback values (108,16,7,8,10,9);
insert into feedback values (110,23,9,7,9,9);
insert into feedback values (110,25,7,8,9,9);
insert into feedback values (110,24,10,8,10,9);
insert into feedback values (111,18,9,8,10,9);
insert into feedback values (111,19,8,8,10,9);
insert into feedback values (112,21,7,8,10,9);
insert into feedback values (112,17,8,10,9);
insert into feedback values (112,20,7,8,10,9);
insert into feedback values (113,2,7,7,10,9);
insert into feedback values (113,1,7,8,9,9);
insert into feedback values (113,4,7,9,10,8);
insert into feedback values (114,6,9,8,9,9);
insert into feedback values (114,8,10,8,10,9);
insert into feedback values (115,13,8,8,10,9);
insert into feedback values (115,12,10,8,9,9);
insert into feedback values (116,14,9,9,10,9);
insert into feedback values (116,15,8,8,8,9);
insert into feedback values (116,16,10,8,9,9);
insert into feedback values (117,12,10,8,10,9);
insert into feedback values (117,11,9,9,10,9);
insert into feedback values (118,25,10,7,10,9);
insert into feedback values (119,12,7,8,8,10);
insert into feedback values (120,7,9,8,10,8);
insert into feedback values (121,12,7,8,10,10);
insert into feedback values (121,13,8,8,10,8);
insert into feedback values (122,21,7,8,10,7);
insert into feedback values (123,14,10,8,10,9);
insert into feedback values (123,15,9,8,9,8);
insert into feedback values (123,16,9,9,10,9);
insert into feedback values (124,20,8,8,9,9);
insert into feedback values (125,23,10,8,10,8);
insert into feedback values (125,25,9,8,10,10);

insert into feedback values (126,5,9,8,10,8);
insert into feedback values (127,10,7,8,10,10);
insert into feedback values (128,13,8,8,10,8);
insert into feedback values (129,22,7,8,10,7);
insert into feedback values (130,14,10,8,10,9);

insert into feedback values (127,8,10,8,9,9);
insert into feedback values (129,23,10,8,10,9);
insert into feedback values (131,11,9,9,10,9);
insert into feedback values (132,21,10,7,10,9);
insert into feedback values (128,12,7,8,8,10);

insert into feedback values (134,18,9,8,9,9);
insert into feedback values (135,5,10,8,10,9);

insert into feedback values (136,4,9,9,10,9);
insert into feedback values (136,5,8,8,8,9);
insert into feedback values (137,9,10,8,9,9);
insert into feedback values (138,21,10,8,10,9);
insert into feedback values (139,11,9,9,10,9);
insert into feedback values (139,13,10,7,10,9);
insert into feedback values (140,12,7,8,8,10);
insert into feedback values (141,7,9,8,10,8);
insert into feedback values (142,22,7,8,10,10);
insert into feedback values (143,15,8,8,10,8);

insert into feedback values (144,18,9,8,10,8);
insert into feedback values (145,23,7,8,10,10);
insert into feedback values (145,24,8,8,10,8);
insert into feedback values (146,21,7,8,10,7);
insert into feedback values (149,14,10,8,10,9);
insert into feedback values (150,19,9,8,9,8);
insert into feedback values (149,16,9,9,10,9);
insert into feedback values (150,20,8,8,9,9);
insert into feedback values (148,13,10,8,10,8);
insert into feedback values (148,12,9,8,10,10);




create table coursee
(
cdno int references dept(dno),
cname varchar(50),
ccode VARCHAR(20)  primary key,
ccredits_reg number(3,1)
);

insert into coursee values (10,'OOPS','OOPS101',5);
insert into coursee values (10,'DBMS','DBMS102',4);
insert into coursee values (10,'OS','OS103',4);
insert into coursee values (11,'ConstructionEng','CM111',2);
insert into coursee values (11,'Fluid mechanics','FM112',3);
insert into coursee values (12,'Elective','ESD121',2);
insert into coursee values (12,'Electronic devices and circuits','EDC122',4);
insert into coursee values (12,'Engineering Graphics','EG123',2);
insert into coursee values (13,'PowerElectronics','PE131',4);
insert into coursee values (13,'Strength of materials and solid mechanics','SM132',3);
insert into coursee values (14,'Circuit Analysis','CA141',3);
insert into coursee values (14,'Control systems','CSY142',5);
insert into coursee values (15,'Immunology','IMM151',3.5);
insert into coursee values (15,'Molecular','ML152',2);
insert into coursee values (15,'Virology','VG153',3);



create table teaches
(
ttid int references teacher(tid),
tccode varchar(20) references coursee(ccode)
);

insert into teaches values(1,'OOPS101');
insert into teaches values(3,'OOPS101');
insert into teaches values(21,'OOPS101');
insert into teaches values(2,'DBMS102');
insert into teaches values(3,'OS103');
insert into teaches values(4,'DBMS102');
insert into teaches values(5,'OS103');
insert into teaches values(21,'OS103');
insert into teaches values(7,'CM111');
insert into teaches values(9,'FM112');
insert into teaches values(10,'CM111');
insert into teaches values(6,'CM111');
insert into teaches values(6,'FM112');
insert into teaches values(8,'FM112');
insert into teaches values(11,'ESD121');
insert into teaches values(12,'ESD121');
insert into teaches values(13,'ESD121');
insert into teaches values(11,'EDC122');
insert into teaches values(13,'EDC122');
insert into teaches values(12,'EG123');
insert into teaches values(13,'EG123');
insert into teaches values(14,'CA141');
insert into teaches values(15,'CSY142');
insert into teaches values(16,'CA141');
insert into teaches values(14,'CSY142');
insert into teaches values(17,'IMM151');
insert into teaches values(18,'IMM151');
insert into teaches values(19,'ML152');
insert into teaches values(19,'VG153');
insert into teaches values(20,'ML152');
insert into teaches values(22,'PE131');
insert into teaches values(23,'PE131');
insert into teaches values(24,'SM132');
insert into teaches values(25,'SM132');
insert into teaches values(22,'SM132');

create table exam_history
(
eusn  int references student_profile(susn),
eccode varchar(20) references coursee(ccode),
ecredits_earned int,    
egpa number(3,1),      
egrade varchar(2) 
);



insert into exam_history values (101,'OOPS101',4,9.8,'s');
insert into exam_history values (101,'DBMS102',4,8,'b');
insert into exam_history values (102,'CM111',1.5,7,'c');
insert into exam_history values (103,'DBMS102',3.5,5.2,'f');
insert into exam_history values (103,'OS103',4,8,'b');
insert into exam_history values (104,'ESD121',1.5,9,'a');
insert into exam_history values (104,'EDC122',3,6.5,'d');
insert into exam_history values (105,'EDC122',2.5,9.6,'s');
insert into exam_history values (105,'ESD121',2.5,6.9,'d');
insert into exam_history values (105,'EG123',2.5,7,'c');
insert into exam_history values (106,'CM111',2,8.9,'b');
insert into exam_history values (106,'FM112',2,9.2,'a');
insert into exam_history values (107,'SM132',3,8,'b');
insert into exam_history values (108,'CA141',1,5,'f');
insert into exam_history values (108,'CSY142',3,7.7,'c');
insert into exam_history values (109,'VG153',4.5,6.9,'d');
insert into exam_history values (109,'IMM151',3.5,9.5,'s');
insert into exam_history values (110,'SM132',3,9,'a');
insert into exam_history values (118,'PE131',3,8,'b');
insert into exam_history values (110,'PE131',3,9.2,'a');
insert into exam_history values (118,'SM132',3,7.5,'c');
insert into exam_history values (125,'PE131',3,9.5,'s');
insert into exam_history values (125,'SM132',3,8,'b');
insert into exam_history values (111,'IMM151',3.5,9.6,'s');
insert into exam_history values (111,'ML152',3.5,9.3,'a');
insert into exam_history values (112,'IMM151',3.5,8.9,'b');
insert into exam_history values (112,'ML152',3.5,5,'f');
insert into exam_history values (112,'VG153',3.5,6.8,'d');
insert into exam_history values (124,'VG153',3.5,9,'a');
insert into exam_history values (124,'IMM151',3.5,9.4,'a');
insert into exam_history values (113,'OOPS101',4,9,'a');
insert into exam_history values (113,'OS103',4,8.5,'b');
insert into exam_history values (113,'DBMS102',4,7,'c');
insert into exam_history values (122,'OOPS101',4,5.2,'f');
insert into exam_history values (122,'DBMS102',4,6,'d');
insert into exam_history values (122,'OS103',4,9.8,'s');
insert into exam_history values (114,'CM111',1.5,8.6,'b');
insert into exam_history values (120,'CM111',1.5,7.8,'c');
insert into exam_history values (114,'FM112',1.5,9,'a');
insert into exam_history values (115,'EDC122',2.5,9.6,'s');
insert into exam_history values (105,'EG123',2.5,6.8,'d');
insert into exam_history values (117,'EDC122',2.5,9,'a');
insert into exam_history values (119,'EDC122',2.5,8.3,'b');
insert into exam_history values (115,'ESD121',2.5,7,'c');
insert into exam_history values (119,'EG123',2.5,6.5,'d');
insert into exam_history values (119,'ESD121',2.5,8.9,'b');
insert into exam_history values (121,'ESD121',2.5,7,'c');
insert into exam_history values (121,'EDC122',2.5,4.9,'f');
insert into exam_history values (121,'EG123',2.5,9.5,'a');
insert into exam_history values (116,'CA141',1,5.9,'f');
insert into exam_history values (116,'CSY142',3,6.9,'d');
insert into exam_history values (123,'CA141',1,9.3,'a');
insert into exam_history values (123,'CSY142',3,8.7,'b');
insert into exam_history values (126,'OOPS101',4,8.2,'b');
insert into exam_history values (126,'OS103',4,8.5,'b');
insert into exam_history values (126,'DBMS102',4,7.6,'c');
insert into exam_history values (135,'OOPS101',4,6.9,'d');
insert into exam_history values (135,'OS103',4,9.4,'a');
insert into exam_history values (136,'DBMS102',4,7.6,'c');
insert into exam_history values (136,'OOPS101',4,9,'a');
insert into exam_history values (138,'OS103',4,9.1,'a');
insert into exam_history values (138,'DBMS102',4,9.3,'a');
insert into exam_history values (138,'OOPS101',4,6.4,'d');
insert into exam_history values (146,'OS103',4,5.2,'f');
insert into exam_history values (146,'DBMS102',4,7.1,'c');
insert into exam_history values (127,'CM111',2,6.9,'d');
insert into exam_history values (127,'FM112',2,9.2,'a');
insert into exam_history values (132,'CM111',2,8.9,'b');
insert into exam_history values (137,'FM112',2,7.6,'c');
insert into exam_history values (137,'CM111',2,8.9,'b');
insert into exam_history values (141,'FM112',2,9.8,'s');
insert into exam_history values (141,'CM111',2,8.8,'b');
insert into exam_history values (147,'FM112',2,4.9,'f');
insert into exam_history values (128,'EDC122',2.5,9.6,'s');
insert into exam_history values (131,'ESD121',2.5,6.5,'d');
insert into exam_history values (131,'EG123',2.5,9.3,'a');
insert into exam_history values (131,'EDC122',2.5,9.2,'a');
insert into exam_history values (128,'ESD121',2.5,7.8,'c');
insert into exam_history values (139,'EG123',2.5,9.8,'s');
insert into exam_history values (139,'EDC122',2.5,9.6,'s');
insert into exam_history values (140,'ESD121',2.5,8.1,'b');
insert into exam_history values (140,'EG123',2.5,7.6,'c');
insert into exam_history values (140,'EDC122',2.5,8.4,'b');
insert into exam_history values (148,'ESD121',2.5,9,'a');
insert into exam_history values (148,'EG123',2.5,8.9,'b');
insert into exam_history values (129,'PE131',3,9.7,'s');
insert into exam_history values (129,'SM132',3,9.5,'a');
insert into exam_history values (133,'PE131',3,8.2,'b');
insert into exam_history values (133,'SM132',3,6.3,'d');
insert into exam_history values (142,'PE131',3,5.3,'f');
insert into exam_history values (145,'SM132',3,7.5,'c');
insert into exam_history values (130,'CA141',1,5.6,'d');
insert into exam_history values (130,'CSY142',3,9.4,'a');
insert into exam_history values (143,'CA141',1,8.6,'b');
insert into exam_history values (149,'CSY142',3,7.8,'c');
insert into exam_history values (134,'IMM151',3.5,9.3,'a');
insert into exam_history values (134,'ML152',3.5,9.8,'s');
insert into exam_history values (144,'VG153',3.5,6.6,'d');
insert into exam_history values (144,'IMM151',3.5,7.9,'c');
insert into exam_history values (144,'ML152',3.5,8.6,'b');
insert into exam_history values (150,'VG153',3.5,8.8,'b');
insert into exam_history values (150,'IMM151',3.5,8.8,'b');
insert into exam_history values (150,'ML152',3.5,5.3,'d');
select * from exam_history;


create table reevaluation
(
rusn int references student_profile(susn),
rccode varchar(20) references coursee(ccode),
ramount int,          
amt_paid varchar(10)        
);
insert into reevaluation values (101,'DBMS102',500,'yes');
insert into reevaluation values (113,'DBMS102',500,'yes');
insert into reevaluation values (113,'OOPS101',550,'yes');
insert into reevaluation values (106,'CM111',520,'no');
insert into reevaluation values (114,'CM111',520,'yes');
insert into reevaluation values (120,'CM111',520,'yes');
insert into reevaluation values (104,'EDC122',400,'yes');
insert into reevaluation values (105,'EG123',580,'yes');
insert into reevaluation values (115,'EG123',580,'no');
insert into reevaluation values (115,'ESD121',500,'no');

insert into reevaluation values (121,'EDC122',400,'yes');
insert into reevaluation values (107,'SM132',550,'yes');
insert into reevaluation values (118,'PE131',450,'no');
insert into reevaluation values (118,'SM132',550,'yes');
insert into reevaluation values (125,'SM132',450,'no');
insert into reevaluation values (116,'CA141',420,'no');
insert into reevaluation values (116,'CSY142',420,'no');
insert into reevaluation values (112,'ML152',450,'yes');
insert into reevaluation values (112,'VG153',450,'yes');
insert into reevaluation values (109,'VG153',450,'no');

insert into reevaluation values (135,'OOPS101',550,'yes');
insert into reevaluation values (138,'OOPS101',550,'yes');
insert into reevaluation values (126,'DBMS102',500,'yes');
insert into reevaluation values (146,'OS103',500,'yes');

insert into reevaluation values (127,'CM111',520,'no');
insert into reevaluation values (147,'FM112',520,'yes');

insert into reevaluation values (140,'EG123',580,'yes');
insert into reevaluation values (131,'ESD121',500,'no');
insert into reevaluation values (138,'ESD121',500,'no');

insert into reevaluation values (133,'SM132',550,'yes');
insert into reevaluation values (142,'PE131',450,'yes');

insert into reevaluation values (130,'CA141',420,'yes');
insert into reevaluation values (149,'CSY142',420,'yes');

insert into reevaluation values (150,'ML152',450,'no');
insert into reevaluation values (144,'VG153',450,'yes');

create table vikas_session
(
vusn int references student_profile(susn),
apt_score int,
communication_ability_score int,
english_proficiency_score int,
attendence int
);


insert into vikas_session values (101,19,20,17,78);
insert into vikas_session values (102,18,17,15,95);
insert into vikas_session values (103,20,18,12,90);
insert into vikas_session values (104,18,12,18,86);
insert into vikas_session values (105,05,08,09,69); 
insert into vikas_session values (106,11,17,12,75);
insert into vikas_session values (107,19,16,12,83);
insert into vikas_session values (108,16,10,11,59);
insert into vikas_session values (109,19,20,11,100);
insert into vikas_session values (110,15,13,20,93);
insert into vikas_session values (111,19,20,15,78);
insert into vikas_session values (112,16,15,18,65);
insert into vikas_session values (113,20,16,18,10);
insert into vikas_session values (114,17,12,18,96);
insert into vikas_session values (115,19,18,17,49); 
insert into vikas_session values (116,18,17,17,75);
insert into vikas_session values (117,15,16,18,93);
insert into vikas_session values (118,14,15,17,49);
insert into vikas_session values (119,14,20,18,40);
insert into vikas_session values (120,17,14,19,63);
insert into vikas_session values (121,16,13,18,15);
insert into vikas_session values (122,18,15,19,53);
insert into vikas_session values (123,15,09,14,99);
insert into vikas_session values (124,19,20,18,100);
insert into vikas_session values (125,19,15,20,78);

insert into vikas_session values (126,19,20,17,80);
insert into vikas_session values (127,18,17,15,85);
insert into vikas_session values (128,20,18,12,70);
insert into vikas_session values (129,18,12,18,96);
insert into vikas_session values (130,05,08,09,89); 
insert into vikas_session values (131,11,17,12,85);
insert into vikas_session values (132,19,16,12,83);
insert into vikas_session values (133,16,10,11,59);
insert into vikas_session values (134,19,20,11,100);
insert into vikas_session values (135,15,13,20,93);
insert into vikas_session values (140,19,20,15,78);
insert into vikas_session values (141,16,15,18,65);
insert into vikas_session values (142,20,16,18,10);
insert into vikas_session values (143,17,12,18,96);
insert into vikas_session values (144,19,18,17,49); 
insert into vikas_session values (145,18,17,17,75);
insert into vikas_session values (146,15,16,18,93);
insert into vikas_session values (147,14,15,17,49);
insert into vikas_session values (148,14,20,18,40);
insert into vikas_session values (149,17,14,19,63);
insert into vikas_session values (150,16,13,18,15);
insert into vikas_session values (136,18,15,19,53);
insert into vikas_session values (137,15,09,14,99);
insert into vikas_session values (138,19,20,18,100);
insert into vikas_session values (139,19,15,20,78);
select *from vikas_session;


create table feechallan
(
fusn int references student_profile(susn),
stream varchar(20),
batch int,  
entry_exam varchar(10),
category varchar(10),
total_fee int,
payment_status varchar(10)
);





insert into feechallan values (101,' BE',2020,'cet','2AK',81800,' YES');
insert into feechallan values (102,' BE',2020,'cet','SC/ST',81800,' YES');
insert into feechallan values (103,' BE',2020,'management','GM',221700,' NO');
insert into feechallan values (104,' BE',2020,'comedk','OTHERS',192000,' NO');
insert into feechallan values (105,' BE',2020,'cet','SC/ST',81800,' YES');
insert into feechallan values (106,' BE',2020,'cet','2AHK',81800, ' NO');
insert into feechallan values (107,' BE',2020,'comedk','GM',192000,' YES');
insert into feechallan values (108,' BE',2020,'cet','OTHERS',81800,' NO');
insert into feechallan values (109,' BE',2020,'cet','SC/ST',81800,' YES');
insert into feechallan values (110,' BE',2019,'comedk','3B',192000,' YES');
insert into feechallan values (111,' BE',2019,'management','1G',221700,' YES');
insert into feechallan values (112,' BE',2019,'comedk','3B',192000,' NO');
insert into feechallan values (113,' BE',2019,'comedk','SC/ST',192000,' NO');
insert into feechallan values (114,' BE',2019,'management','1K',221700,' YES');
insert into feechallan values (115,' BE',2019,'cet','GM',81800,' NO');
insert into feechallan values (116,' BE',2019,'cet','GM',81800,' YES');
insert into feechallan values (117,' BE',2019,'comedk','1K',192000,' YES');
insert into feechallan values (118,' BE',2018,'management','OTHERS',221700,' YES');
insert into feechallan values (119,' BE',2018,'comedk','3AG',192000,' YES');
insert into feechallan values (120,' BE',2018,'cet','3B',81800,' NO');
insert into feechallan values (121,' BE',2018,'management','2AHK',221700,' NO');
insert into feechallan values (122,' BE',2018,'comedk','1G',192000,' YES');
insert into feechallan values (123,' BE',2018,'cet','2AK',81800,' NO');
insert into feechallan values (124,' BE',2018,'management','SC/ST',221700,' YES');
insert into feechallan values (125,' BE',2018,'comedk','1K',192000,' NO');
insert into feechallan values (126,' BE',2018,'management','GM',221700,' NO');
insert into feechallan values (127,' BE',2018,'comedk','2AK',192000,' YES');
insert into feechallan values (128,' BE',2019,'management','GM',221700,' YES');
insert into feechallan values (129,' BE',2018,'cet','2B',81800,' YES');
insert into feechallan values (130,' BE',2018,'cet','SC/ST',81800,' YES');
insert into feechallan values (131,' BE',2019,'cet','GM',81800, ' NO');
insert into feechallan values (132,' BE',2018,'comedk','SC/ST',192000,' YES');
insert into feechallan values (133,' BE',2019,'cet','2AK',81800,' YES');
insert into feechallan values (134,' BE',2018,'management','3B',221700,' YES');
insert into feechallan values (135,' BE',2018,'cet','GM',81800,' YES');
insert into feechallan values (136,' BE',2020,'management','1G',221700,' NO');
insert into feechallan values (137,' BE',2020,'cet','@AK',81800,' NO');
insert into feechallan values (138,' BE',2020,'comedk','GM',192000,' NO');
insert into feechallan values (139,' BE',2020,'cet','2B',81800,' YES');
insert into feechallan values (140,' BE',2020,'cet','SC/ST',81800,' NO');
insert into feechallan values (141,' BE',2020,'comedk','2B',192000,' YES');
insert into feechallan values (142,' BE',2020,'comedk','SC/ST',192000,' NO');
insert into feechallan values (143,' BE',2020,'cet','3B',81800,' YES');
insert into feechallan values (144,' BE',2020,'comedk','3AG',192000,' YES');
insert into feechallan values (145,' BE',2019,'cet','OTHERS',81800,' NO');
insert into feechallan values (146,' BE',2019,'management','2AHK',221700,' YES');
insert into feechallan values (147,' BE',2019,'management','GM',221700,' YES');
insert into feechallan values (148,' BE',2019,'cet','2AK',81800,' NO');
insert into feechallan values (149,' BE',2019,'management','GM',221700,' YES');
insert into feechallan values (150,' BE',2019,'management','SC/ST',221700,'YES');
select *from reevaluation;

select *from reevaluation;

commit;
select * from dept;
select * from student_profile;
select * from teacher;
select * from coursee;
select * from feedback;
select * from exam_history;
select * from reevaluation;
select * from vikas_session;
select * from feechallan;
select * from teaches;

-- JOIN OPERATIONS :
/*Retrieve student who has applied for reevaluation along eith their previouse grade scored by that particular subject*/
select rusn,sname,eccode,egpa,egrade
from student_profile s,coursee c,exam_history e,reevaluation r
where s.susn=r.rusn and r.rccode=c.ccode and c.ccode=e.eccode and e.eusn=s.susn; 

/* Retrieve students of 2020 batch along with department choosen by them.*/
select susn,dname
from student_profile s,dept d,feechallan f
where s.susn = f.fusn and s.sdnno=d.dno and f.batch = 2020;

/*Retrieve mentors of CS department and with the courses they teach */
select mentor_ssn,tname,tccode
from teaches ts,teacher t,coursee c,dept d
where ts.ttid=t.tid and ts.tccode=c.ccode and t.tid=t.mentor_ssn and t.tdnno=d.dno and d.dname='CS';
select * from teacher;
/*Retrieve student name who has failed in in DBMS */
select distinct susn,sname
from student_profile s,coursee c,dept d,exam_history e
where  c.ccode='DBMS102'and e.eccode=c.ccode and e.eusn=s.susn  and e.egrade='f';
select * from exam_history;
/*Retrieve students who got 'a' grade in courses offered by Mechanical dept*/
select susn,sname,eccode,egrade
from student_profile s, coursee c, dept d,exam_history e
where s.susn=e.eusn and s.sdnno=d.dno and c.ccode=e.eccode and e.egrade ='a' and d.dname='MECH';


/*Retrieve student details who have scored 20 in apt score*/
select susn,sname,ssem,sdiv,sdnno,v.apt_score
from student_profile s ,vikas_session v
where s.susn = v.vusn and apt_score = 20;

/*Retrieve students from B division who have given feedback to the teachers along with the teacher's id*/
select fusn,tid
from student_profile s,feedback f,teacher t
where s.susn=f.fusn and t.tid=f.ftid and s.sdiv='B';

/*Retrieve teacher who got 10 points either in teaching or in following lp from the A division sudents*/
select tid,tname,f.teaching_pts,f.following_lp
from student_profile s, teacher t,feedback f
where s.susn=f.fusn and t.tid=f.ftid and (f.teaching_pts=10 or f.following_lp=10) and s.sdiv='A';

/*Retrieve course in which students has scored more than 8 gpa*/
select distinct e.eccode,e.eusn,e.egpa
from coursee c,exam_history e,student_profile s
where c.ccode=e.eccode and e.egpa>8;
select * from exam_history;
/*Retrieve student and department choosen by them who got admission through cet exam*/
select susn,dname
from student_profile s,feechallan f,dept d
where s.susn=f.fusn and d.dno=s.sdnno and f.entry_exam='cet';

select * from feedback;
select * from teacher;

--SUB QUERIES-----------------------------------

--Retrieve teacher who has got 10 pts in any of the questions in feedback
select *
from teacher 
where tid in (
select tid
from feedback,teacher
where feedback.ftid=teacher.tid and (feedback.teaching_pts=10 or feedback.doubt_clr_pts=10 or feedback.following_lp=10 or feedback.interacting_pts=10)
);

select * from exam_history;

--Retrieve students of CS department who has got less than the average gpa
select susn,e.eccode,egpa
from student_profile s,exam_history e,dept d,coursee c
where s.susn=e.eusn and s.sdnno=d.dno and s.sdnno=10 and c.cdno=d.dno and egpa<
( select avg(egpa)
from exam_history ee, dept d,student_profile ss,coursee c
where ee.eusn=ss.susn and ss.sdnno=d.dno and ss.sdnno=10 and c.cdno=d.dno);

--Retrieve teacher along with the course he is teaching in which students got s grade
select tid,tname,tccode
from teacher t,teaches tc
where t.tid=tc.ttid  and tid in(
select distinct ttid
from teaches tc,exam_history e
where tc.tccode=e.eccode    and e.egrade='s' );

--Retrieve students who has got less than the average marks in aptitude test
select susn,sname,v.apt_score
from student_profile s,vikas_session v
where s.susn=v.vusn and v.apt_score<
(
select avg(apt_score)
from vikas_session v
);

--Retrieve students of 2020 batch who got admission by management seat
select * 
from student_profile
where susn in
(select fusn
from feechallan f
where f.entry_exam='management' and f.batch=2020);


--Retrieve teacher who has got the feedback points same as the teacher with maximum points
insert into feedback values (101,3,10,10,10,10);
insert into feedback values (101,5,10,10,10,10);

select distinct ftid,tname
from feedback t1, teacher t
where  t.tid=t1.ftid and exists(
select ftid
from feedback t2
where  ( t2.interacting_pts=10 and t2.following_lp=10 and t2.doubt_clr_pts=10 and t2.teaching_pts=10 )and t2.ftid=t1.ftid);
select * from feedback;


--Retrieve the department with lowest number of students
select  distinct dno,dname
from dept d1,student_profile s1 
where s1.sdnno=d1.dno and (1) > all (select count(s1.sdnno)
                 from student_profile s2,dept d1                  
                 where  s2.sdnno=d1.dno and s2.sdnno > s1.sdnno);
    

-- find the grade scored by the student that is the highest grade along with studen usn
select eccode,egrade,eusn
from  exam_history e1
where  not exists (select e2.egrade
                    from exam_history e2
                    where e2.egrade > e1.egrade );
        
--increase gpa of a student by 1.2, who have applied for reevaluation, and got less than 5 gpa
update exam_history 
set egpa = 1.2 + egpa
where eusn in (select susn 
               from reevaluation r,exam_history e,student_profile s 
               where r.rusn=s.susn and e.eusn=s.susn  and e.egpa<5);

--Retrieve course for which maximum students have applied for reevaluation
select ccode,cname
from coursee
where ccode in(
select rccode
from reevaluation
group by rccode
having count(*)>=ALL
(select count(*)
from reevaluation
group by rccode));


--Retrieve department with maximum no. of students  
select dno,dname
from dept
where dno in(
select sdnno
from student_profile
group by sdnno
having count(*)>=ALL
(select count(*)
from student_profile
group by sdnno));

--Retrieve students who has earned less than the credits registered
select susn,dname
from student_profile s,dept d
where s.sdnno=d.dno and susn in (
select eusn
from coursee c,exam_history e
where e.eccode=c.ccode and  ecredits_earned!=ccredits_reg
);
--Retrieve vikas class attendence of students who are from 2020 batch  
select distinct vusn,attendence
from vikas_session v
where vusn in
(
select fusn 
from feechallan
where batch=2020);

--Retrieve student who has not paid fees but scored good grades
select eusn,sname,eccode,e.egrade
from exam_history e,student_profile s
where e.eusn=s.susn and e.egpa>9 and eusn in
(select fusn
from feechallan
where payment_status=' NO');
select * from vikas_session;

--Retrieve student who is performing well in both ACADEMICS and VIKAS classes(scoring a grades)
select eusn,sname,egrade
from exam_history e, student_profile s
where s.susn=e.eusn and egpa>9 and eusn in
(
select vusn
from vikas_session
where apt_score>17 and communication_ability_score>17 and english_proficiency_score>17
);


--Retrieve teacher who has got good feedback points along with the grades scored by the studets in that courses which are taught by them
select distinct tid,egrade
from teacher t,teaches tc,exam_history e,feedback 
where e.eccode=tc.tccode and t.tid=tc.ttid and tid in
(select ftid
from feedback t2
where t2.interacting_pts>9 and t2.following_lp>9 and t2.doubt_clr_pts>9 and t2.teaching_pts>9);

--Retrieve students from A division who has paid amout for reevaluation
select susn,sname,sdiv
from student_profile s
where sdiv='A' and susn in
(select rusn
from reevaluation
where amt_paid='yes');

--Retrieve feedback points scored by menotrs 
select ftid,interacting_pts,following_lp,doubt_clr_pts,teaching_pts
from feedback
where ftid in
(select tid
from teacher
where tid=teacher.mentor_ssn);

--Retrieve mentor and course he is teaching in which students are scoring less than 7 gpa
select mentor_ssn,tname,tccode 
from teacher t,teaches tc
where t.tid=tc.ttid and mentor_ssn in(
select tid
from teacher t,feedback f,student_profile s,exam_history e
where f.fusn=s.susn and t.tid=f.ftid and e.eusn=s.susn and e.egpa<7);

--Retrieve course in which maximum students have scored a grades.
select *
from coursee
where ccode in(
            select eccode
            from exam_history
            group by eccode
            having count(*)>=ALL
                (select count(*)
                from exam_history
                group by eccode)    );

--Retrieve exam history of A division Students
select *
from exam_history
where eusn in(
select susn
from student_profile
where sdiv='A');

-- Students who got admission through cet exam.
select susn,sname
from student_profile
where susn in ( select fusn
from feechallan
where entry_exam='cet');

--Retrieve total credits registered for department 12.
select sum(ccredits_reg)
from coursee
where ccode in(select ccode
from coursee
where coursee.cdno=12 );
select * from coursee;

--24) Retrieve Vikas performance of students with more than 90 perc. attendence
select *
from vikas_session
where vusn in(
select vusn
from vikas_session
where attendence>90);

--25) Retrieve menotrs details from department 10
select *
from teacher
where tid in(select tid
from teacher
where tid=mentor_ssn and tdnno=10);

select egpa,apt_score
from vikas_session v,exam_history e,student_profile s
where v.vusn=s.susn and s.susn=e.eusn and vusn=102 ;
