create table transaction_records(
    txnno INT, 
    txndate STRING, 
    custno INT, 
    amount DOUBLE,
    category STRING, 
    product STRING, 
    city STRING, 
    state STRING, 
    spendby STRING)
row format delimited
fields terminated by ','
stored as textfile;

load data local inpath '/home/${env:USER}/big-data-architect-training/hadoop/module05/Transactions.txt' into table transaction_records;