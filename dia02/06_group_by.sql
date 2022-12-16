-- Databricks notebook source
SELECT COUNT(*)

FROM silver_olist.cliente

-- WHERE descUF = 'SP'
-- WHERE descUF = 'SC'
WHERE descUF = 'MT'


-- COMMAND ----------

SELECT 
  descUF,
  COUNT(*)

FROM silver_olist.cliente

-- WHERE descUF = 'SP'
-- WHERE descUF = 'SC'
GROUP BY descUF

-- COMMAND ----------

SELECT 
  descUF,
  COUNT(distinct idClienteUnico)

FROM silver_olist.cliente

GROUP BY descUF

-- COMMAND ----------

SELECT 
  descUF,
  COUNT(distinct idClienteUnico)

FROM silver_olist.cliente

GROUP BY descUF

-- COMMAND ----------


