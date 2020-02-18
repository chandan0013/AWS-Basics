At shell prompt
===============
hadoop distcp s3n://%Access key%@%data folder%/%Data%  hdfs:///data
hadoop fs -ls /data/
impala-shell

At Impala prompt
================
CREATE EXTERNAL TABLE MedallionVehicles(  License_Number string,  Name string,  Type string,  Current_Status string,  DMV_License_Plate_Number string,  Vehicle_VIN_Number string,  Vehicle_Type string,  Model_Year string,  Medallion_Type string,  Agent_Number string,  Last_Updated_Date string,	 Last_Updated_Time string) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/data';

SELECT * FROM MedallionVehicles where Model_Year > '2010';

DROP TABLE MedallionVehicles;

At shell prompt
===============
hadoop fs -rm -r /data
