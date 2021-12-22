# Databricks notebook source
# DBTITLE 1,Carregamento dos dados da tabela de cartões de clientes com PySpark.
# MAGIC %python
# MAGIC 
# MAGIC clientes = spark.read.format('csv').options(header='true', inferSchema='true', delimiter=';').load('/FileStore/tables/Arquivos/csv/clientes_cartao.csv')
# MAGIC 
# MAGIC display(clientes)

# COMMAND ----------

# DBTITLE 1,Carregamento dos dados da tabela de cartões de clientes com Scala.
# MAGIC %scala
# MAGIC 
# MAGIC  val cliente = spark.read.format("csv")
# MAGIC  .option("header", "true")
# MAGIC  .option("inferSchema", "true")
# MAGIC  .option("delimiter", ";")
# MAGIC  .load("/FileStore/tables/Arquivos/csv/clientes_cartao.csv")
# MAGIC 
# MAGIC display(cliente)

# COMMAND ----------

# DBTITLE 1,Criação de uma view temporária com Scala para leitura com SQL.
# MAGIC %scala
# MAGIC 
# MAGIC cliente.createOrReplaceTempView("dados_cliente")

# COMMAND ----------

# DBTITLE 1,Carregando os dados da view temporária de dados dos clientes com SQL.
# MAGIC %sql
# MAGIC 
# MAGIC SELECT * FROM dados_cliente;
