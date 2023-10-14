-- Databricks notebook source
show tables

-- COMMAND ----------

select * from loan_analysis

-- COMMAND ----------

describe loan_analysis

-- COMMAND ----------

-- DBTITLE 1,Gender wise distribution loan
-- Gender wise distribution loan
select Gender, sum(Loan) from loan_analysis
group by Gender

-- COMMAND ----------

-- DBTITLE 1,Top occupation of taking loan
select distinct Occupation from loan_analysis

-- COMMAND ----------

select Occupation, sum(Loan) from loan_analysis
group by Occupation
order by 2 desc
limit 10

-- COMMAND ----------

-- DBTITLE 1,Loan category distribution
select distinct `Loan Category` from loan_analysis

-- COMMAND ----------

select `Loan Category`, sum(Loan) from loan_analysis
group by 1
order by 2 Desc 
limit 5

-- COMMAND ----------

-- DBTITLE 1,Marital status taking loan
select `Marital status` from loan_analysis

-- COMMAND ----------

select `Marital status`, sum(Loan) from loan_analysis
group by 1

-- COMMAND ----------


