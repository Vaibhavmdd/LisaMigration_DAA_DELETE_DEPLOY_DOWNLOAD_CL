The Global Txn tests are setup run against the following data bases and  each of the data base requires to be setup with the following configuration:

***********************************
		POSTGRES
***********************************


//Users
amxuser/amxuser
amxuser1/amxuser1
amxuser2/amxuser2
amxuser3/amxuser3

//Databases

CREATE DATABASE amxdb
  WITH OWNER = amxuser
       ENCODING = 'UTF8'
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = -1;



CREATE DATABASE amxdb1
  WITH OWNER = amxuser1
       ENCODING = 'UTF8'
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = 20;


CREATE DATABASE amxdb2
  WITH OWNER = amxuser2
       ENCODING = 'UTF8'
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = 20;

CREATE DATABASE amxdb3
  WITH OWNER = amxuser3
       ENCODING = 'UTF8'
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = 20;


	   //Tables
CREATE TABLE "Employee"
(
  "employeeId" character varying(20) NOT NULL,
  "firstName" character varying(20),
  "lastName" character varying(20),
  address character varying(50),
  CONSTRAINT "Employee_pkey" PRIMARY KEY ("employeeId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Employee" OWNER TO amxuser;



//amxdb1
CREATE TABLE "Employee1"
(
  "employeeId" character varying(20) NOT NULL,
  "firstName" character varying(20),
  "lastName" character varying(20),
  address character varying(50),
  CONSTRAINT "Employee1_pkey" PRIMARY KEY ("employeeId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Employee1" OWNER TO amxuser1;


CREATE TABLE "Employee3"
(
  "employeeId" character varying(20) NOT NULL,
  "firstName" character varying(20),
  "lastName" character varying(20),
  address character varying(50),
  CONSTRAINT "Employee3_pkey" PRIMARY KEY ("employeeId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Employee3" OWNER TO amxuser1;


//amxdb2

CREATE TABLE "Employee2"
(
  "employeeId" character varying(20) NOT NULL,
  "firstName" character varying(20),
  "lastName" character varying(20),
  address character varying(50),
  CONSTRAINT "Employee2_pkey" PRIMARY KEY ("employeeId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Employee2" OWNER TO amxuser2;




//amxdb3

CREATE TABLE "Employee3"
(
  "employeeId" character varying(20) NOT NULL,
  "firstName" character varying(20),
  "lastName" character varying(20),
  address character varying(50),
  CONSTRAINT "Employee3_pkey" PRIMARY KEY ("employeeId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Employee3" OWNER TO amxuser3;


********************
ORACLE
*********************
Use the exiting SID

Create users listed above.

Create following tables thru amxuser1:

CREATE TABLE Employee1
(
  employeeId character varying(20) NOT NULL,
  firstName character varying(20),
  lastName character varying(20),
  address character varying(50),
  CONSTRAINT Employee1_pkey PRIMARY KEY (employeeId)
);

CREATE TABLE Employee2
(
  employeeId character varying(20) NOT NULL,
  firstName character varying(20),
  lastName character varying(20),
  address character varying(50),
  CONSTRAINT Employee2_pkey PRIMARY KEY (employeeId)
);


CREATE TABLE Employee3
(
  employeeId character varying(20) NOT NULL,
  firstName character varying(20),
  lastName character varying(20),
  address character varying(50),
  CONSTRAINT Employee3_pkey PRIMARY KEY (employeeId)
);

Create following tables thru amxuser2:
CREATE TABLE Employee2
(
  employeeId character varying(20) NOT NULL,
  firstName character varying(20),
  lastName character varying(20),
  address character varying(50),
  CONSTRAINT Employee2_pkey PRIMARY KEY (employeeId)
);

Create following tables thru amxuser3:
CREATE TABLE Employee3
(
  employeeId character varying(20) NOT NULL,
  firstName character varying(20),
  lastName character varying(20),
  address character varying(50),
  CONSTRAINT Employee3_pkey PRIMARY KEY (employeeId)
);

************************
MS SQL Server 
****************************

Create 3 data bases similar to Postgres.

Create users listed above.

Create following tables in amxdb1:

CREATE TABLE Employee1
(
  employeeId character varying(20) NOT NULL,
  firstName character varying(20),
  lastName character varying(20),
  address character varying(50),
  CONSTRAINT Employee1_pkey PRIMARY KEY (employeeId)
);


Create following tables in amxdb2:
CREATE TABLE Employee2
(
  employeeId character varying(20) NOT NULL,
  firstName character varying(20),
  lastName character varying(20),
  address character varying(50),
  CONSTRAINT Employee2_pkey PRIMARY KEY (employeeId)
);

Create following tables in amxdb3:
CREATE TABLE Employee3
(
  employeeId character varying(20) NOT NULL,
  firstName character varying(20),
  lastName character varying(20),
  address character varying(50),
  CONSTRAINT Employee3_pkey PRIMARY KEY (employeeId)
);



