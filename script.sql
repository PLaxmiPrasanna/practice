
 Create table userRole(userName varchar2(20) primary key,password varchar2(12),roleCode varchar2(10));
 
 create table businessSegment(bus_Seg_Id varchar2(10) primary key,bus_Seg_Seq number(3),bus_Seg_Name varchar2(30));

 create table accounts(accountNumber number(10) primary key,insuredName varchar2(30),insuredStreet varchar2(40),insuredCity varchar2(15),insuredState varchar2(15),
  insuredZip number(5),businessSegmentId varchar2(30), foreign key(businessSegmentId)  references businessSegment(bus_Seg_Id),userName varchar2(20), 
  foreign key(userName) references userRole(userName));

 create table policy(policyNumber number(10) primary key,policyPremium decimal(8,3),accountNumber number(10), foreign key(accountNumber) references accounts(accountNumber));

 create table policyQuestions(pol_Ques_Id varchar2(10) primary key,pol_Ques_Seq number(3),bus_Seg_Id varchar2(30), foreign key(bus_Seg_Id) references businessSegment(bus_Seg_Id),
 pol_Ques_Desc varchar2(80),pol_Ques_Ans1 varchar2(30),pol_Ques_Ans1_weightage number(5),pol_Ques_Ans2 varchar2(30),pol_Ques_Ans2_weightage number(5),pol_Ques_Ans3 varchar2(30),
 pol_Ques_Ans3_weightage number(5),pol_Ques_Ans4 varchar2(30),pol_Ques_Ans4_weightage number(5));

 create table policyDetails(policyNumber number(10),foreign key(policyNumber) references policy(policyNumber),question_Id varchar2(15),
 foreign key(question_Id) references policyQuestions(pol_Ques_Id),answer varchar2(30));
 
 create table premiums(PRE_NO number(8) primary key, PRE_ANS_WEIGHTAGE_MIN number(8), PRE_ANS_WEIGHTAGE_MAX number(8), PRE_AMT number(8));
 
  insert into premiums values(1,1800,2001,100000);
 insert into premiums values(2,2001,2001,150000);
 
 create sequence policy_number start with 1 increment by 1 minvalue 1;
 
 alter table policy modify(policypremium number(15,3));
 
 
 /*desc policyquestions;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 POL_QUES_ID                               NOT NULL VARCHAR2(10)
 POL_QUES_SEQ                                       NUMBER(3)
 BUS_SEG_ID                                         VARCHAR2(30)
 POL_QUES_DESC                                      VARCHAR2(80)
 POL_QUES_ANS1                                      VARCHAR2(30)
 POL_QUES_ANS1_WEIGHTAGE                            NUMBER(5)
 POL_QUES_ANS2                                      VARCHAR2(30)
 POL_QUES_ANS2_WEIGHTAGE                            NUMBER(5)
 POL_QUES_ANS3                                      VARCHAR2(30)
 POL_QUES_ANS3_WEIGHTAGE                            NUMBER(5)*/

 insert into policyQuestions values('Q1', 1, 'BA01', 'Vehicle Type', 'Light', 200, 'Heavy', 400, 'Truck', 600);

insert into policyQuestions values('Q2', 2, 'BA01', 'Vehicle Model Year', 'Less than 2000', 200, '2001 to 2010', 400, 'More than 2010', 600);

insert into policyQuestions values('Q3', 3, 'BA01', 'Vehicle Model', 'High Segment', 200, 'Mid Segment', 400, 'Economy', 600);

insert into policyQuestions values('Q4', 4, 'BA01', 'Daily Commute Distance', 'Less than 21', 200, '21 to 50', 400, 'Greater than 50', 600);

 insert into policyQuestions(pol_Ques_Id, pol_Ques_Seq, bus_Seg_Id, pol_Ques_Desc, pol_Ques_Ans1, pol_Ques_Ans1_Weightage, pol_Ques_Ans2, pol_Ques_Ans2_Weightage,pol_Ques_Ans3_Weightage) values('Q5', 5, 'BA01', 'Service center', 'Authorized', 200, 'Non Authorized', 400, 600);

 insert into policyQuestions values('Q6', 6, 'BA01', 'Collision Coverage Limit', '10000 to 30000', 200, '30001 to 50000', 400, '50001 to 100000', 600);

insert into policyQuestions values('Q7', 7, 'BA01', 'Bodily Injury Limit', '10000 to 30000', 200, '30001 to 50000', 400, '50001 to 100000', 600);

 insert into policyQuestions values('Q8', 8, 'BA01', 'Uninsured Motorist', '10000 to 30000', 200, '30001 to 50000', 400, '50001 to 100000', 600);

insert into policyQuestions values('Q9', 9, 'BA01', 'Unknown Hit or Theft Coverage', '10000 to 30000', 200, '30001 to 50000', 400, '50001 to 100000', 600);

insert into policyQuestions values('Q10', 10, 'BA01', 'Property and Liability', '10000 to 30000', 200, '10000 to 30000', 400, '10000 to 30000', 600);



insert into policyQuestions values('RQ1', 1, 'R02', 'Restaurant Type', 'Only Dining', 200, 'Dining with Bar', 400, 'Dining with Bar&Entertainment', 600);

insert into policyQuestions values('RQ2',2, 'R02', 'Restaurant SQ Ft', 'less than 1500 sq.ft', 200, 'From 1500 to 5000 sq.ft', 400, 'More than 5000', 600);

insert into policyQuestions values('RQ3',3, 'R02', 'Number of Sprinklers', 'upto 20', 200, '21 to 40', 400, 'More than 40', 600);

 insert into policyQuestions values('RQ4',4, 'R02', 'No. of Cylinders in Kitchen', 'upto 5', 200, 'From 6 to 15', 400, 'More than 15', 600);

 insert into policyQuestions values('RQ5',5, 'R02', 'Fine Arts', '5000 to 15000', 200, '15000 to 30000', 400, 'More than 30000', 600);

insert into policyQuestions values('RQ6',6, 'R02', 'Property Damage', 'upto 5,00,000', 200, '5,00,000 to 15,00,000', 400, 'More than 15,00,000', 600);

insert into policyQuestions values('RQ7',7, 'R02', 'Equipment Breakdown', 'upto 50000', 200, 'from 50000 to 2,00,000', 400, 'More than 2,00,000', 600);

insert into policyQuestions values('RQ8',8, 'R02', 'Liability Covergae', '10000 to 15000', 200, '15001 to 30000', 400, 'More than 30000', 600);

 insert into policyQuestions values('RQ9',9, 'R02', 'Body Injury', 'upto 25000', 200, '25001 to 50000', 400, 'More than 50000', 600);