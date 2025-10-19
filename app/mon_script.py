from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("TestApp").getOrCreate()

data = [("Ben", 24), ("Awa", 26), ("Diaara", 27)]
df = spark.createDataFrame(data, ["nom", "age"])

df.show()
spark.stop()
