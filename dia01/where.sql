-- Databricks notebook source
SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'canceled'

-- LIMIT 100

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja cancelado 'canceled'

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'canceled' 
AND year(dtPedido) = '2018'

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido que estejam canceladas e de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao = 'canceled' OR descSituacao = 'shipped')
AND year(dtPedido) = '2018'

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando peddidos (enviados OU cancelados) e ano 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('canceled','shipped')
AND year(dtPedido) = '2018'

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando peddidos (enviados OU cancelados) e ano 2018

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega, dtAprovado) AS espera

FROM silver_olist.pedido

WHERE descSituacao IN ('canceled','shipped')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando peddidos (enviados OU cancelados), ano 2018 e a espera estimada (estimativa de entrega menos data aprovação) seja maior que 30 dias.
