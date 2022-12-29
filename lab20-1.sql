CREATE TABLESPACE space1 OWNER "user" LOCATION '/usr/src/space1';
CREATE TABLESPACE space2 OWNER "user" LOCATION '/usr/src/space2';
CREATE TABLESPACE space3 OWNER "user" LOCATION '/usr/src/space3';

SELECT * FROM pg_tablespace;

CREATE TABLE tab1 (x integer) TABLESPACE space1;
CREATE TABLE tab2 (y integer) TABLESPACE space2;
CREATE TABLE tab3 (z integer) TABLESPACE space3;

SELECT * FROM pg_tables;

INSERT INTO tab1 (x) SELECT random() FROM generate_series(1, 1000);
INSERT INTO tab2 (y) SELECT random() FROM generate_series(1, 10000);
INSERT INTO tab3 (z) SELECT random() FROM generate_series(1, 100000);

SELECT spcname, pg_size_pretty(pg_tablespace_size(spcname)) FROM pg_tablespace ORDER BY spcname;


