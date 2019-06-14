CREATE DATABASE PLP_PROJECT_ORS

USE PLP_PROJECT_ORS


----------------------------------------------------USERS----------------------------------------------------

DROP TABLE "USER"

CREATE TABLE "USER"
(
 "User_Id" varchar(20) PRIMARY KEY,
 "Password" varchar(50),
  User_Type varchar(20) 
)


SELECT * FROM "USER"
insert into "USER" values(123,'12345','JobSeeker');
insert into "USER" values(122,'123456','Employer');
insert into "USER" values(223,'22345','JobSeeker');






----------------------------------------------------JOB SEEKER----------------------------------------------------

DROP TABLE JOB_SEEKER

CREATE TABLE JOB_SEEKER
(
 "User_Id" varchar(20) FOREIGN KEY REFERENCES "USER"("User_Id"),
 "Name" varchar(50),
  Email varchar(50) primary key,
  Mobile_No  varchar(20),
  "Address" varchar(50),
  Gender varchar(10),
  "Resume" varchar(200),
  Skills varchar(200),
  Experience int
)


insert into JOB_SEEKER values('223','Ritu','ritu@gmail.com','9988776655','Maharashtra','Female','ggg','jjhhh','java',3);
SELECT * FROM JOB_SEEKER

----------------------------------------------------JOBS----------------------------------------------------
DROP TABLE JOBS

CREATE TABLE JOBS
(
 "User_Id" varchar(20) FOREIGN KEY REFERENCES "USER"("User_Id"),
 Job_Id int Primary Key ,
 Info_Of_Company varchar(200),
 Job_Category varchar(30),
 Number_Of_Opening int,
 Location_Of_Opening varchar(20),
 Designation varchar(20),
 Experience int,
 Skills varchar(200),
 "Name" varchar(50),
  Mobile_Number varchar(10),
 Email varchar(30) FOREIGN KEY REFERENCES EMPLOYER(Email)
)


 select * from JOBS

----------------------------------------------------EMPLOYER----------------------------------------------------
DROP TABLE EMPLOYER

 CREATE TABLE EMPLOYER
(
"User_Id" varchar(20) FOREIGN KEY REFERENCES "USER"("User_Id"),
"Name" varchar(50),
 Company_Name varchar(200),
 Email varchar(30) Primary key,
 Mobile_Number varchar(10),
 Designation varchar(20)
)
insert into EMPLOYER values (123,'Jonas','capgemini','jonas@gmil.com','9874563210','analyst');
select * from EMPLOYER