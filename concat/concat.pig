DATA = load '/user/acadgild/pig/concat/concat.txt' using PigStorage(',') as (d1:chararray,d2:chararray,d3:chararray);

DATA_CONCAT = foreach DATA generate CONCAT(d1,d2,d3);

store DATA_CONCAT into '/user/acadgild/pig/concat/output';
