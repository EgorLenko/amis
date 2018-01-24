create table userinfo(
    id number(10) not null,
    firstname varchar(40) not null,
    lastname varchar(40) not null,
    Constraint userinfo_pk primary key(id)
);

create table userRole(
    id number(10) not null,
    name varchar(40) not null,
    Constraint role_pk primary key(id)
);

create table aUser(
    id number(10) not null,
    email varchar(40) not null,
    password varchar(40) not null,
    userInfoId number(10) not null,
    roleId number(10) not null,
    Constraint user_pk primary key(id),
    Foreign key (userInfoId) references userinfo(id),
    Foreign key (roleId) references userrole(id)
    );
    
create table RestInfo(
    id number(10) not null,
    Name varchar(30) not null,
    description varchar(30) not null,
    Constraint restInfo_pk primary key(id)
);
create table restAddress(
    id number(10) not null,
    street varchar(30) not null,
    city varchar(30) not null,
    country varchar(30) not null, 
    houseNumber number(5) not null,
 Constraint restAddress_pk primary key(id)  
 );
    
  
create table Rest(
    id number(10) not null,
    restInfoId number(10) not null,
    restAddressId number(10) not null,
	ownerId number(10) not null,
	menuID number(10) not null,
    Constraint rest_pk primary key(id),
    Foreign key (restInfoId) references restInfo(id),
    Foreign key (restAddressId) references restAddress(id),
	Foreign key (ownerId) references aUser(id)
    );
	
create table resOrder(
    id number(10) not null,
    userID number(10) not null,
	restID number(10) not null,
	tableID number(10) not null,
	ordDate TIMESTAMP not null,
    Constraint resOrder_pk primary key(id),
	Foreign key (userID) references aUser(id),
    Foreign key (restID) references rest(id),
	Foreign key (tableID) references tableRest(id)
    );

create table tableRest(
    id number(10) not null,
    ordID number(10) not null,
	restOrdID number(10) not null,
	tableIsFree boolean not null,
    Constraint tableRest_pk primary key(id),
	Foreign key (ordID) references resOrder(id),
	Foreign key (RestOrdID) references Rest(id)
    );

create table Menu(
    id number(10) not null,
    dishID number(10) not null,
    dishName varchar(40) not null,
    dishPrice float(10) not null,
    Constraint menu_pk primary key(id)
    );