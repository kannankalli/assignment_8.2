DATA = load '/user/acadgild/pig/store/store.txt' using PigStorage(',') as (id:int,name:chararray,job:chararray,expense:double);

store DATA into '/user/acadgild/pig/store/output';
