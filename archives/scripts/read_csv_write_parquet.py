# Databricks notebook source
# DBTITLE 1,Realizando a leitura do CSV e guardando no DataFrame.
# Leitura de arquivo CSV
dataframesp= spark.read.format("csv").option("header", "true").load("/FileStore/tables/Arquivos/csv/datafiniti_hotel_reviews_jun19_2.csv")
dataframesp.show()

# COMMAND ----------

# DBTITLE 1,Realizando a leitura do CSV e guardando dados no DataFrame (via Scala).
# MAGIC %scala
# MAGIC val dataframescala = sqlContext.read.format("com.databricks.spark.csv") 
# MAGIC .option("delimiter", ",") 
# MAGIC .load("/FileStore/tables/Arquivos/csv/datafiniti_hotel_reviews_jun19_2.csv")
# MAGIC dataframescala.show()

# COMMAND ----------

# DBTITLE 1,Gravando o DataFrame no formato em parquet.
#criando o arquivo parquet
dataframesp.write.parquet("/FileStore/tables/Arquivos/parquet/csvparquet.parquet")

# COMMAND ----------

# DBTITLE 1,Realizando a leitura em parquet.
#Realizando uma leitura do arquivo parquet
datafleitura=spark.read.parquet("/FileStore/tables/Arquivos/parquet/csvparquet.parquet")
datafleitura.show()
