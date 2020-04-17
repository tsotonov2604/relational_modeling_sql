drop table Request; 
drop table Product;
drop table FullOrder;
drop table Customer; 
 
create table Customer( 
CustomerID number(3), 
Name varchar(25), 
Address varchar(50),

primary key (CustomerID) 
); 

create table FullOrder( 
OrderID number(5), 
OrderDate date,
CustomerID number(3), 

primary key(OrderID),
foreign key (CustomerID) references Customer(CustomerID) 
); 

create table Request( 
OrderID number(5), 
ProductID number(2), 
Quantity number check(Quantity between 1 and 100), 

foreign key (OrderID) references FullOrder(OrderId)
); 

create table Product( 
ProductID number(2), 
Description varchar(28), 
Finish varchar(10), 
Price float check(Price >= 0 and Price <= 999.99),

primary key(ProductID)
); 


insert into Customer values (2,'CASUAL FURNITURE','PLANO, TX');
insert into Customer values (6,'MOUNTAIN GALLERY','BOULDER, CO');

insert into FullOrder values(1006,to_date('24-03-10','dd-mm-yy'),2);
insert into FullOrder values(1007,to_date('25-03-10','dd-mm-yy'),6);
insert into FullOrder values(1008,to_date('25-03-10','dd-mm-yy'),6);
insert into FullOrder values(1009,to_date('26-03-10','dd-mm-yy'),2);

insert into Product values(10,'WRITING DESK','OAK',425); 
insert into Product values(30,'DINING TABLE','ASH',600);
insert into Product values(40,'ENTERTAINMENT CENTER','MAPLE',650);
insert into Product values(70,'CHILDRENS DRESSER','PINE',300);

insert into Request values(1006,10,4);
insert into Request values(1006,30,2);
insert into Request values(1006,40,1);
insert into Request values(1007,40,3);
insert into Request values(1007,70,2);
insert into Request values(1008,70,1);
insert into Request values(1009,10,2);
insert into Request values(1009,40,1);


select * from Customer; 
select * from FullOrder; 
select * from Product;
select * from Request; 
