--View to see the 5 products with most sales in the company.

create or replace view PIPELINE.GLOBAL_TRANSACTIONS.MOST_SOLD_PRODUCTS(
	PRODUCT_ID,
	PRODUCT_NAME,
	TOTAL_ITEMS_SOLD
) as
SELECT
    PRODUCT.PRODUCT_ID,
    PRODUCT.PRODUCT_NAME,
    SUM(SALES.QUANTITY_OF_ITEMS_SOLD) AS TOTAL_ITEMS_SOLD
FROM
    SALES
INNER JOIN
    PRODUCT ON SALES.PRODUCT_ID = PRODUCT.PRODUCT_ID
GROUP BY
    PRODUCT.PRODUCT_ID,
    PRODUCT.PRODUCT_NAME
ORDER BY
    TOTAL_ITEMS_SOLD DESC
LIMIT 5;

SELECT * FROM MOST_SOLD_PRODUCTS;