-- Databricks notebook source
SELECT COUNT(*) AS nrLinhasNaoNulas -- linhas não nulas

FROM silver_olist.cliente


-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT (idCliente) AS nrIdClienteNaoNulo
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT (idCliente) AS nrIdClienteNaoNulo, -- id clientes nao nulos
    COUNT (distinct idCliente) AS nrIdClienteDistintos -- id clientes distintos

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas, -- conta linhas não nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo, -- conta id clientes nao nulos
    COUNT(distinct idCliente) AS nrIdClienteDistintos, -- conta id clientes distintos
    COUNT(idClienteUnico) AS nrIdClienteUnico,
    COUNT(distinct idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes únicos distintos
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
  COUNT(*) AS qtLinhas,
  COUNT(distinct idCliente) AS qtClientes,
  COUNT(distinct idClienteUnico) AS qtClientesunicos
  
FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT
  ROUND( AVG(vlPreco), 2) AS avgPreco, -- media da coluna vlPreco
  ROUND( PERCENTILE(vlPreco, 0.5), 2) AS medianPreco, -- preco mediano. 50% dos produtos custam abaixo desse valor e 50% acima
  MAX(vlPreco) AS maxPreco, -- maior valor pago em um produto
  INT(AVG(vlFrete)) AS avgFrete, -- media da coluna vlFrete
  INT(MAX(vlFrete)) AS maxFrete, -- maior valor de frete pago
  MIN(vlFrete) AS minFrete -- menor valor de frete pago

FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)

FROM silver_olist.cliente

-- WHERE descUF = 'SP'
-- WHERE descUF = 'SC'
WHERE descUF = 'MT'
