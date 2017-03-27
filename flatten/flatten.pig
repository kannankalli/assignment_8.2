DATA = load '/user/acadgild/pig/flatten/flatten.txt' as (d:chararray);

DATA_FLATTEN = foreach DATA generate FLATTEN(TOKENIZE(d));

store DATA_FLATTEN into '/user/acadgild/pig/flatten/output';
