DATA = load '/user/acadgild/pig/max/max.txt' using PigStorage(' ') as (id:int,name:chararray,job:chararray,expense:double);

DATA_GROUP = group DATA by job;
DATA_MAX = foreach DATA_GROUP generate group,MAX(DATA.expense);

store DATA_MAX into '/user/acadgild/pig/max/output';
