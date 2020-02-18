mkdir streamingCode

wget -O ./streamingCode/wordSplitter.py http://s3.amazonaws.com/elasticmapreduce/samples/wordcount/wordSplitter.py

hadoop jar contrib/streaming/hadoop-streaming.jar -files streamingCode/wordSplitter.py -mapper wordSplitter.py -input s3://elasticmapreduce/samples/wordcount/input -output streamingCode/wordCountOut -reducer aggregate

hadoop fs -cat streamingCode/wordCountOut/*

hadoop fs -rm streamingCode/wordCountOut/*
hadoop fs -rmdir streamingCode/wordCountOut
rm streamingCode/*
rmdir streamingCode
