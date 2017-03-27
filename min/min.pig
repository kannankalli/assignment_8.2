DATA = load '/user/acadgild/pig/min/min.txt' using PigStorage(' ') as (id:int,name:chararray,job:chararray,expense:double);

DATA_GROUP = group DATA by job;
DATA_MIN = foreach DATA_GROUP generate group,MIN(DATA.expense);

store DATA_MIN into '/user/acadgild/pig/min/output';
