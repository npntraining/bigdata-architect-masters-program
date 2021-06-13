create table transaction_records_partitioned(
txnno INT, 
txndate STRING, 
custno INT, 
amount DOUBLE,
product STRING, 
city STRING, 
state STRING, 
spendby STRING)
partitioned by (category STRING)
row format delimited fields terminated by ','
stored as textfile;