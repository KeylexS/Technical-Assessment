--The view is responsible for displaying the customer retention rate,
--referring to the proportion of customers who make repeat purchases
--within a given period of time.
--
--Variables:
--NumberOfTransactions: Counts the total number of unique transactions.
--CustomerRetentionRate: Calculates the customer retention rate by dividing
--the number of customers who have made more than one transaction by the total
--number of unique customers.
--AverageTransactionValue: Calculates the average transaction value by adding
--all transactions and dividing by the total number of unique transactions.

create or replace view PIPELINE.GLOBAL_TRANSACTIONS.TRANSACTION_METRICS(
	NUMBER_OF_TRANSACTIONS,
	CUSTOMER_RETENTION_RATE,
	AVERAGE_TRANSACTION_VALUE
) as
SELECT
    COUNT(DISTINCT TRANSACTION_ID) AS NUMBER_OF_TRANSACTIONS,
    COUNT(DISTINCT CASE WHEN NUM_TRANSACTIONS >  1 THEN CLIENT_ID END) / COUNT(DISTINCT CLIENT_ID) AS CUSTOMER_RETENTION_RATE,
    SUM(QUANTITY_OF_ITEMS_SOLD * UNIT_PRICE - DISCOUNT) / COUNT(DISTINCT TRANSACTION_ID) AS AVERAGE_TRANSACTION_VALUE
FROM
    (SELECT
        TRANSACTION_ID,
        CLIENT_ID,
        QUANTITY_OF_ITEMS_SOLD,
        UNIT_PRICE,
        DISCOUNT,
        COUNT(*) OVER (PARTITION BY CLIENT_ID) AS NUM_TRANSACTIONS
    FROM
        PIPELINE.GLOBAL_TRANSACTIONS.SALES) SUBQUERY;