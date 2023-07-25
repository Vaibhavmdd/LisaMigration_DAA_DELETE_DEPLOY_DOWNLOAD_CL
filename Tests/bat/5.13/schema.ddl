***********************************
		POSTGRES
***********************************

CREATE DATABASE test_1
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = -1;


CREATE DATABASE test_2
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = -1;

CREATE DATABASE test_3
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = -1;
	   

CREATE TABLE table_1
(
  country text,
  gdp text
)
WITH (
  OIDS=TRUE
);
ALTER TABLE table_1 OWNER TO postgres;

CREATE TABLE table_2
(
  country text,
  currency text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE table_2 OWNER TO postgres;

CREATE TABLE table_3
(
  country text,
  capital text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE table_3 OWNER TO postgres;


***********************************
		ORACLE
***********************************

Create following table thru amxuser1:

CREATE TABLE table_1 ( country character varying(20) PRIMARY KEY, gdp character varying(20));

Create following table thru amxuser2:

CREATE TABLE table_2(country character varying(20) PRIMARY KEY,currency character varying(20));

Create following table thru amxuser3:

CREATE TABLE table_3(country character varying(20) PRIMARY KEY,capital character varying(20));

CREATE TABLE table_4(country character varying(20) PRIMARY KEY,currency character varying(20));

run this command with amxuser2
GRANT SELECT,INSERT,UPDATE,DELETE ON AMXUSER2.TABLE_2 TO AMXUSER1;

run this command with amxuser3
GRANT SELECT,INSERT,UPDATE,DELETE ON AMXUSER3.TABLE_3 TO AMXUSER1;