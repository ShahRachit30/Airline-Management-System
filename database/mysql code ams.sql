create database airlinemanagementsystem;

use airlinemanagementsystem;

create table login(username varchar(25), password varchar(20));

insert into login values('admin', '12345');

select * from login;

create table passenger(name varchar(20), nationality varchar(20), phone varchar(20), address varchar(60), aadhar varchar(20), gender varchar(15)); 

select * from passenger;

create table flight(f_code varchar(20), f_name varchar(20), source varchar(40), destination varchar(60)); 

describe flight;

insert into flight values('1001', 'AT_12120', 'Mumbai', 'Ahmedabad');
insert into flight values('1002', 'AT_12145', 'Mumbai', 'Goa');
insert into flight values('1003', 'AT_12551', 'Mumbai', 'Delhi');
insert into flight values('1004', 'AT_12514', 'Mumbai', 'Punjab');
insert into flight values('1005', 'AT_12564', 'Mumbai', 'Jaipur');

select * from flight;

create table reservation(PNR varchar(20), TICKET varchar(20), aadhar varchar(20), name varchar(20), nationality varchar(30), flightname varchar(15), flightcode varchar(20), src varchar(30), des varchar(30), ddate varchar(30));

select * from reservation;

create table cancel(pnr varchar(20), name varchar(40), cancelno varchar(20), f_code varchar(20), ddate varchar(30));

select * from cancel;

