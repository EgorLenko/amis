insert into userInfo(id,firstname,lastname)
values(1, 'name1','lname1');
insert into userInfo(id,firstname,lastname)
values(2, 'name2','lname2');
insert into userInfo(id,firstname,lastname)
values(3, 'name3','lname3');

insert into userRole(id,name)
values(1,'user');
insert into userRole(id,name)
values(2,'restorator');
insert into userRole(id,name)
values(3,'SuperAdmin');

insert into aUser(id,email,password,userInfoId,roleId)
values (1,'user@restoranio.com','pass1',1,1);
insert into appUser(id,email,password,userInfoId,roleId)
values (2,'admin@restoranio.com','pass2',2,2);
insert into appUser(id,email,password,userInfoId,roleId)
values (3,'Egor@restoranio.com','pass3',3,3);

insert into RestInfo(id,title,description)
values(1,'title1','description1');
insert into RestInfo(id,title,description)
values(2,'title2','description2');
insert into RestInfo(id,title,description)
values(3,'title3','description3');

insert into restAddress(id,street,city,country,houseNumber)
values(1,'street1','city1','Ukraine',1);
insert into hoteladdress(id,street,city,country,houseNumber)
values(2,'street2','city2','Ukraine',2);
insert into hoteladdress(id,street,city,country,houseNumber)
values(3,'street3','city3','Ukraine',3);

insert into Rest(id,RestInfoId,RestAddressid,menuID)
values(1,1,1,1);
insert into Rest(id,RestInfoId,RestAddressid,menuID)
values(2,2,2,2);
insert into Rest(id,RestInfoId,RestAddressid,menuID)
values(3,3,3,3);

insert into resOrder(id,userID,restID,tableID,ordDate)
values(1,1,2,2,'26-JAN-2018 11:00:00');
insert into resOrder(id,userID,restID,tableID,ordDate)
values(2,2,3,3,'26-JAN-2018 14:00:00');
insert into resOrder(id,userID,restID,tableID,ordDate)
values(3,3,1,4,'26-JAN-2018 17:00:00');

insert into tableRest(id,ordID,restOrdID,tableIsFree)
values(2,1,2,1,FALSE);
insert into tableRest(id,ordID,restOrdID,tableIsFree)
values(3,2,3,1,FALSE);
insert into tableRest(id,ordID,restOrdID,tableIsFree)
values(4,5,1,1,FALSE);

insert into Menu(id,dishID,dishName,dishPrice)
values(1,1,'Yaichnica',500);
insert into Menu(id,dishID,dishName,dishPrice)
values(1,1,'ZharenayaRiba',200);
insert into Menu(id,dishID,dishName,dishPrice)
values(1,1,'Grechya',150);