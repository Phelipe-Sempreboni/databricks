# Databricks notebook source
# DBTITLE 1,Lista de arquivos JSON que estão armazenados no DBFS.
# MAGIC %fs ls /databricks-datasets/structured-streaming/events

# COMMAND ----------

# DBTITLE 1,Exibindo um arquivo JSON com as informações.
# MAGIC %fs head /databricks-datasets/structured-streaming/events/file-0.json

# COMMAND ----------

# DBTITLE 1,Carregando 1 arquivo JSON para o DataFrame.
# MAGIC %python
# MAGIC # Lendo 1 arquivo JSON 
# MAGIC dataf = spark.read.json("/databricks-datasets/structured-streaming/events/file-0.json")
# MAGIC dataf.printSchema()
# MAGIC dataf.show()

# COMMAND ----------

# DBTITLE 1,Carregando 2 arquivos JSON para o DataFrame.
# MAGIC %python
# MAGIC #Lendo 2 arquivos JSON
# MAGIC dataf2 = spark.read.json(['/databricks-datasets/structured-streaming/events/file-0.json','/databricks-datasets/structured-streaming/events/file-1.json'])
# MAGIC dataf2.show() 

# COMMAND ----------

# DBTITLE 1,Carregando TODOS os arquivos JSON para o DataFrame.
# MAGIC %python
# MAGIC #Lendo todos os arquivos JSON
# MAGIC dataf3 = spark.read.json("/databricks-datasets/structured-streaming/events/*.json")
# MAGIC dataf3.show()

# COMMAND ----------

# DBTITLE 1,Unificando todos os arquivos que foram guardados no DataFrame (dataf3) para um novo arquivo JSON.
# MAGIC %python
# MAGIC #Gravação dos dados que estão no dataframe para JSON em um único arquivo
# MAGIC dataf3.write.json("/FileStore/tables/Arquivos/json/eventos.json")

# COMMAND ----------

# DBTITLE 1,Criação de uma tabela para executar um SQL.
# MAGIC %python
# MAGIC spark.sql("CREATE OR REPLACE TEMPORARY VIEW view_evento USING json OPTIONS" + "(path '/FileStore/tables/Arquivos/json/eventos.json')")
# MAGIC spark.sql("select action from view_evento").show()
