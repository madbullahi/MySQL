##Create a database of your own choice.It must be a meaningful/thoughtout database.
#script:
show databases;
create database clientdb;
use clientdb;

## Create a table with a primary key and the correct datatypes.
##Include a minimum of 5 fields.View the table structure to make 
sure it is set up correctly.
#script:
show databases;
use clientdb;
create table user(id int(10) auto_increment unsigned primary key not null,
username varchar(25) not null, passwrd varchar(25) not null,
email varchar(40) not null,
gender varchar(30) not null);