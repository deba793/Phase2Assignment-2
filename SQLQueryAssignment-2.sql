create database ExerciseDb;

use ExerciseDb


create table Publisher (
    PID int primary key,
    PublisherName nvarchar(50) unique not null
)
insert into Publisher values(1001,'Packt Publishing')
insert into Publisher values(1002,'Learn Coding Fast')
insert into Publisher values(1003,'O′Reilly')



create table Category (
    CID int  primary key,
    CategoryName nvarchar(50) unique not null
)
insert into Category (CID, CategoryName) values(1, 'Fiction')
insert into Category (CID, CategoryName) values(2, 'Non-Fiction')
insert into Category (CID, CategoryName) values(3, 'Science Fiction')
    
    
    


create table Author (
    AID int primary key,
    AuthorName nvarchar(100) unique not null
)
insert into Author (AID, AuthorName) values(1, 'John Doe')
insert into Author (AID, AuthorName) values(2, 'Jane Smith')
insert into Author (AID, AuthorName) values(3, 'Michael Johnson')
    
    
    


create table Book (
    BID int primary key,
    BName nvarchar(50) not null,
    BPrice decimal(10, 2),
    Author int,
    Publisher int,
    Category int,
    foreign key (Author) references Author(AID),
    foreign key(Publisher) references Publisher(PID),
    foreign key (Category) references Category(CID)
)


insert into Book (BID, BName, BPrice, Author, Publisher, Category) values(1, 'Tiger of Drass: Capt. Anuj Nayyar, 23, Kargil Hero', 16.96, 1, 1001, 1)
insert into Book (BID, BName, BPrice, Author, Publisher, Category) values(2, 'Hear Yourself', 16.94, 2, 1001, 2)
insert into Book (BID, BName, BPrice, Author, Publisher, Category) values(3,'Not Just A Nightwatchman: My Innings with BCCI',7.99,3,1001,1)
insert into Book (BID, BName, BPrice, Author, Publisher, Category) values(4, 'The Boy Who Wrote a Constitution ', 13.95, 1, 1002, 3)
insert into Book (BID, BName, BPrice, Author, Publisher, Category) values(5, 'Listen to Your Heart: The London Adventure', 22.99, 2, 1003, 2)
insert into Book (BID, BName, BPrice, Author, Publisher, Category) values(6, 'A Place Called Home', 19.50, 3,1003, 1)
    
    
    
    
    
   select * from Book