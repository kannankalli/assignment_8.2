DATA = load '/user/acadgild/pig/sum/sum.txt' using PigStorage(' ') as (id:int,name:chararray,job:chararray,expense:double);

DATA_GROUP = group DATA by job;
DATA_SUM = foreach DATA_GROUP generate group,SUM(DATA.expense);

store DATA_SUM into '/user/acadgild/pig/sum/output';
