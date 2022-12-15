-- Databricks notebook source
-- 01 Selecione todos os clientes paulistanos

SELECT *

FROM silver_olist.cliente

WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- 02 Selecione todos os cliente paulistas

SELECT *

FROM silver_olist.cliente

WHERE descUf = 'SP'

-- COMMAND ----------

-- 03 Selecione todos os vendedores cariocas e paulistas

SELECT *

FROM silver_olist.vendedor

WHERE descCidade = 'rio de janeiro' 
OR descUF = 'SP'

-- COMMAND ----------

-- 04 Selecione todos os produtos de perfumaria e bebes com altura maior de 5 cm

SELECT * 

FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes')
AND vlAlturaCm > 5

-- COMMAND ----------


