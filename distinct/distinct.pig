DATA = load '/user/acadgild/pig/distinct/distinct.txt' using PigStorage(' ') as (id:int,name:chararray,job:chararray,expense:double);

DATA_DISTINCT = distinct DATA;

store DATA_DISTINCT into '/user/acadgild/pig/distinct/output';
