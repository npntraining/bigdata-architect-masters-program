create table transaction_records_partition_bucket(txnno INT, txndate STRING, custno INT, amount DOUBLE,
product STRING, city STRING, state STRING, spendby STRING)
partitioned by (category STRING)
CLUSTERED BY(state) into 10 BUCKETS
row format delimited fields terminated by ','
stored as textfile;


FROM transaction_records_partition_bucket txn INSERT OVERWRITE TABLE TransactionRecordsByCat
PARTITION(category)
select txn.txnno, txn.txndate,txn.custno,  
txn.amount,txn.product,txn.city,txn.state,txn.spendby,
txn.category;