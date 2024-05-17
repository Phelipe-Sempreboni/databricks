-- Databricks notebook source
-- DBTITLE 1,Carregamento da tabela completa de vinhos.
/*

Seleção total da tabela de vinhos.

*/

SELECT * FROM default.tbl_vinhos_no_mundo;

-- COMMAND ----------

-- DBTITLE 1,Carregamentos dos campos (PRECO E REGIAO_1)  da tabela de vinhos.
/*

Seleção dos campos (PRECO E REGIAO_1) da tabela de vinhos.

*/

SELECT 
  REGIAO_1
 ,PRECO 
 
FROM default.tbl_vinhos_no_mundo;

-- COMMAND ----------

-- DBTITLE 1,Carregamentos dos campos (PRECO E REGIAO_1)  da tabela de vinhos com geração de um gráfico.
/*

Seleção dos campos (PRECO E REGIAO_1) da tabela de vinhos e montando um gráfico.

*/

SELECT 
  REGIAO_1
 ,PRECO 
 
FROM default.tbl_vinhos_no_mundo;

-- COMMAND ----------

-- DBTITLE 1,CARREGANDO OS DADOS E SELECIONANDO O TOTAL VENDIDO NOS PAISES, LIMITADO AOS 10 PRIMEIROS.
/*

Seleção dos campos (PAIS E PRECO) da tabela de vinhos.

Selecionado o total vendido nos países, onde a consuta esta limitado aos 10 primeiros que mais vendem vinhos.

*/

SELECT
  PAIS
 ,SUM(PRECO) AS TOTAL_VENDIDO
 
FROM default.tbl_vinhos_no_mundo

WHERE PRECO > 0

GROUP BY PAIS

ORDER BY
  TOTAL_VENDIDO DESC

LIMIT 10

-- COMMAND ----------

-- DBTITLE 1,CARREGANDO OS DADOS E SELECIONANDO O TOTAL VENDIDO NOS PAISES, LIMITADO AOS 10 PRIMEIROS COM GRÁFICO.
/*

Seleção dos campos (PAIS E PRECO) da tabela de vinhos.

Selecionado o total vendido nos países, onde a consuta esta limitado aos 10 primeiros que mais vendem vinhos e gerando um gráfico.

*/

SELECT
  PAIS
 ,SUM(PRECO) AS TOTAL_VENDIDO
 
FROM default.tbl_vinhos_no_mundo

WHERE PRECO > 0

GROUP BY PAIS

ORDER BY
  TOTAL_VENDIDO DESC

LIMIT 10

-- COMMAND ----------

-- DBTITLE 1,CARREGANDO OS DADOS E SELECIONANDO O TOTAL VENDIDO NOS PAISES COM AS VARIANTES, LIMITADO AOS 10 PRIMEIROS
/*

Seleção dos campos (PAIS, VARIANTE E PRECO) da tabela de vinhos.

Selecionado o total vendido nos países e com as variantes, onde a consuta esta limitado aos 10 primeiros que mais vendem vinhos.

*/

SELECT
  PAIS
 ,VARIANTE
 ,SUM(PRECO) AS TOTAL_VENDIDO
 
FROM default.tbl_vinhos_no_mundo

WHERE PRECO > 0

GROUP BY 
  PAIS
 ,VARIANTE

ORDER BY
  TOTAL_VENDIDO DESC

LIMIT 10

-- COMMAND ----------

-- DBTITLE 1,CARREGANDO OS DADOS E SELECIONANDO O TOTAL VENDIDO NOS PAISES COM AS VARIANTES, LIMITADO AOS 10 PRIMEIROS COM GRÁFICO.
/*

Seleção dos campos (PAIS, VARIANTE E PRECO) da tabela de vinhos.

Selecionado o total vendido nos países e com as variantes, onde a consuta esta limitado aos 10 primeiros que mais vendem vinhos e gerando um gráfico.

*/

SELECT
  PAIS
 ,VARIANTE
 ,SUM(PRECO) AS TOTAL_VENDIDO
 
FROM default.tbl_vinhos_no_mundo

WHERE PRECO > 0

GROUP BY 
  PAIS
 ,VARIANTE

ORDER BY
  TOTAL_VENDIDO DESC

LIMIT 10

-- COMMAND ----------

-- DBTITLE 1,CARREGANDOS OS DADOS DE PONTOS E PRECO DA TABELA DE VINHOS.
/*

Seleção dos campos (PONTOS E PRECO) da tabela de vinhos.

Selecionado os pontos por precos.

*/

SELECT
  PONTOS
 ,PRECO
 
FROM default.tbl_vinhos_no_mundo

-- COMMAND ----------

-- DBTITLE 1,CARREGANDOS OS DADOS DE PONTOS E PRECO DA TABELA DE VINHOS E GERANDO UM GRÁFICO.
/*

Seleção dos campos (PONTOS E PRECO) da tabela de vinhos.

Selecionado os pontos por precos e gerando um gráfico.

*/

SELECT
  PONTOS
 ,PRECO
 
FROM default.tbl_vinhos_no_mundo
