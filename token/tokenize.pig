DATA = load '/user/acadgild/pig/tokenize/token.txt' as (d:chararray);

DATA_TOKEN = foreach DATA generate TOKENIZE(d);

store DATA_TOKEN into '/user/acadgild/pig/tokenize/output';
