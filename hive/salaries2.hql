CREATE TABLE IF NOT EXISTS cs595.salpart (
name STRING,
agencyID STRING,
agency STRING,
hireDate STRING,
annualSalary DOUBLE,
grossPay DOUBLE)
PARTITIONED BY (jobTitle STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';


