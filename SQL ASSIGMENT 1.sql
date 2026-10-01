CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE table DEPARTMENTS(DEPARTMENT_ID INT,DEPARTMENT_NAME varchar(100)); 
CREATE TABLE LOCATION(LOCATION_ID INT,LOCATION varchar(30));
CREATE TABLE EMPLOYEES(EMPLOYEE_ID INT,EMPLOYEE_NAME VARCHAR(50),GENDER ENUM('M,F'),AGE INT,HIRE_DATE DATE,DESIGNATION VARCHAR(100),DEPARTMENT_ID INT,LOCATION_ID INT,SALARY DECIMAL(10,2));

desc EMPLOYEES; 
desc LOCATION;
desc deparTments;
ALTER TABLE EMPLOYEES ADD COLUMN EMAIL varchar(100);
alter table employees modify designation varchar(500);
alter table employees drop age;
alter table employees rename column hire_date to date_of_joining;
rename tables departments to departments_info;
rename tables location to locations;
truncate table employees;
drop table employees;
drop database employee;
DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;
create database employee;
use employee;
create table departments(
department_id int primary key,
department_name varchar(100) not null unique);

create table location(
location_id int auto_increment primary key,
location_name varchar(100) not null unique);

create table employees(
employee_id int primary key,
employee_name varchar(100) not null,
gender char(1) CHECK (Gender IN ('M', 'F')),
age int check (age > 18),
hire_date date default (current_date),
department_id int,
location_id int,

foreign key (department_id) references departments(department_id),
foreign key (location_id) references location(location_id));

select * from employees;

select * from departments;

select * from location;



