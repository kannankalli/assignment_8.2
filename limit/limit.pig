DATA = load '/user/acadgild/pig/limit/limit.txt' using PigStorage(' ') as (id:int,name:chararray,job:chararray,expense:double);

DATA_ORDER = ORDER DATA by expense desc;
DATA_LIMIT = limit DATA_ORDER 1;

store DATA_LIMIT into '/user/acadgild/pig/limit/output';
