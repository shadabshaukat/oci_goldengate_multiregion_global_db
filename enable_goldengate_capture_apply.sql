-- Enable Goldengate user --

alter user ggadmin identified by <> ;

alter user ggadmin account unlock;

-- Enable Supplemental logging with admin user for Replicat -- 

ALTER PLUGGABLE DATABASE ADD SUPPLEMENTAL LOG DATA;

select minimal from dba_supplemental_logging;
