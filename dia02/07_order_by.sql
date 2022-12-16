-- Databricks notebook source
SELECT 
  descUF,
  COUNT(distinct idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY descUF

-- COMMAND ----------

-- primeira forma

SELECT 
  descUF,
  COUNT(distinct idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY 2

-- COMMAND ----------

-- segunda forma

SELECT 
  descUF,
  COUNT(distinct idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado

-- COMMAND ----------

-- terceira forma

SELECT 
  descUF,
  COUNT(distinct idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(distinct idClienteUnico)

-- COMMAND ----------

SELECT 
  descUF,
  COUNT(distinct idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado DESC -- ordenar por ordem decrescente

-- COMMAND ----------

SELECT 
  descUF,
  COUNT(distinct idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado DESC

LIMIT 1
