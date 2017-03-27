DATA_EMPLOYEE = load '/user/acadgild/pig/isempty/isempty.txt' using PigStorage(',') as (id:int,name:chararray,job:chararray,salary:double);

DATA_EXPENSES = load '/user/acadgild/pig/isempty/isempty1.txt' using PigStorage(',') as (id:int,expense:double);

DATA = cogroup DATA_EMPLOYEE by id, DATA_EXPENSES by id;

DATA_EMPTY = filter DATA by IsEmpty(DATA_EXPENSES);

store DATA_EMPTY into '/user/acadgild/pig/isempty/output';
