SELECT PRODUCT_CODE, PRICE * SUM(SALES_AMOUNT) SALES
FROM PRODUCT
JOIN OFFLINE_SALE USING(PRODUCT_ID)
GROUP BY PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE ASC;