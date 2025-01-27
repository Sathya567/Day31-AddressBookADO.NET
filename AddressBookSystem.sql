﻿--UC1
Create database addressbook_service;

use addressbook_service
--Create Table UC2
create table address_books
(
first_name varchar(20) not null,
last_name varchar(20) not null,
address varchar(20) not null,
city varchar(20) not null,
state varchar(13) not null,
zip varchar(6) not null,
phone_number varchar(10) not null,
email varchar(20) not null,
bookname varchar(20) ,
addressbooktype varchar(20)
);


CREATE PROCEDURE addressProcedure
@first_name varchar(20) ,
@last_name varchar(20) ,
@address varchar(20),
@city varchar(20),
@state varchar(13),
@zip varchar(6),
@phone_number varchar(10),
@email varchar(20),
@bookname varchar(20) ,
@addressbooktype varchar(20)
as
insert into address_books values(@first_name,@last_name,@address,@city,@state,@zip,@phone_number,@email,@bookname,@addressbooktype);
    
go

select * from address_books
use addressbook_service
select * from address_books