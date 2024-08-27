create database priyank6;
use priyank6;
create table category_header (cat_code int primary key , cat_desc varchar(20));

create table route_header (route_id int primary key , route_no int , cat_code int,
 origin varchar(20) , destination varchar(20) , fare int check(fare != 0) ,
 distance int not null , capacity int , 
 foreign key (cat_code) references category_header(cat_code) );
 
 show tables;
 desc category_header;
 desc route_header;
 
 create table fleet_header (fleet_id int primary key , day date , 
 route_id int , cat_code int ,
 foreign key (route_id) references route_header(route_id) , 
 foreign key (cat_code) references category_header(cat_code) );
 
 CREATE TABLE ticket_header (
    fleet_id INT,
    ticket_id INT PRIMARY KEY,
    doi DATE,
    dot DATE,
    time_travel VARCHAR(8),
    board_place VARCHAR(20),
    origin VARCHAR(20),
    destination VARCHAR(20),
    adults INT,
    children INT,
    total_fare INT,
    route_id INT,
    FOREIGN KEY (route_id) REFERENCES route_header(route_id)
);

CREATE TABLE place_header (
	place_id int PRIMARY KEY,
	place_name varchar(25),
	place_address varchar(25),
	bus_station varchar(25)
);

CREATE TABLE ticket_details (
    ticket_id INT,
    name VARCHAR(20),
    sex CHAR(1) CHECK (sex IN ('M', 'F')),
    age INT,
    fare NUMERIC(5, 2) CHECK (fare > 0),
    FOREIGN KEY (ticket_id) REFERENCES ticket_header(ticket_id)
);

insert into category_header value 
(01 , 'super deluxe'),
(02 , 'deluxe'),
(03 , 'super fast'),
(04 , 'normal');
 
 select * from route_header;
 select * from category_header;
 
insert into route_header values(101,33,01,'Madurai','Madras',35,250,50);
insert into route_header values(102,25,02,'Trichy','Madurai',40,159,50);
insert into route_header values(103,15,03,'Thanjavur','Madurai',59,140,50);
insert into route_header values(104,36,04,'Madras','Banglore',79,375,50);
insert into route_header values(105,40,01,'Banglore','Madras',80,375,50);
insert into route_header values(106,38,02,'Madras','Madurai',39,250,50);
insert into route_header values(107,39,03,'Hyderabad','Madras',50,430,50);
insert into route_header values(108,41,04,'Madras','Cochin',47,576,50);

INSERT INTO fleet_header VALUES (1, '1996-10-04', 101, 1);
INSERT INTO fleet_header VALUES (2, '1996-10-04', 101, 1);
INSERT INTO fleet_header VALUES (3, '1996-10-04', 101, 1);
INSERT into fleet_header VALUES (4, '1996-10-04', 102, 2);
INSERT INTO fleet_header VALUES (5, '1996-10-04', 102, 2);
INSERT into fleet_header VALUES (6, '1996-10-04', 103, 3);

select * from place_header;
drop table route_header;
drop table fleet_header;
drop table category_header;
drop table ticket_header;
drop table place_header;
drop table ticket_details;
show tables;
select * from route_header;

insert into place_header values(01,'Madras','10,PTC ROAD','PARRYS');
insert into place_header values(02,'Madurai','21,CANAL ROAD','KKNAGAR');
insert into place_header values(03,'Trichy','11,FIRST CROSS ROAD','BNELTOWN');
insert into place_header values(04,'BANGLORE','15,FIRST MAIN ROAD','CUBBONPARK');
insert into place_header values(05,'HYDERABAD','115,LAKE VIEW ROAD','CHARMINAR');
insert into place_header values(06,'THANIJAYUR','12,TEMPLE ROAD','RAILWAYIN');

select * from place_header;

insert into ticket_header values 
()