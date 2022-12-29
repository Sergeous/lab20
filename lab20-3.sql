ALTER TABLE tab1 SET TABLESPACE pg_default;
ALTER TABLE tab2 SET TABLESPACE pg_default;
ALTER TABLE tab2 SET TABLESPACE pg_default;

SELECT spcname, pg_size_pretty(pg_tablespace_size(spcname)) FROM pg_tablespace ORDER BY spcname;

