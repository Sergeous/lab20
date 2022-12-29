ALTER TABLE tab2 SET TABLESPACE space1;
ALTER TABLE tab3 SET TABLESPACE space1;

SELECT * FROM pg_TABLES WHERE schemaname = 'public';

SELECT relfilenode, tablename, tableowner, tablespace FROM pg_tables JOIN pg_class on tablename = relname WHERE schemaname = 'public';

SELECT spcname, pg_size_pretty(pg_tablespace_size(spcname)) FROM pg_tablespace ORDER BY spcname;
