USE ecommerce_db;
SELECT Product_ID, AVG(Rating) AS Average_Rating
FROM Review
GROUP BY Product_ID;

SELECT Product_ID, COUNT(*) AS Total_Reviews
FROM Review
GROUP BY Product_ID;

SELECT Product_ID, AVG(Rating) AS Average_Rating
FROM Review
GROUP BY Product_ID
ORDER BY Average_Rating DESC;

SELECT Product_ID, AVG(Rating) AS Average_Rating
FROM Review
GROUP BY Product_ID
HAVING AVG(Rating) > 4;

SELECT
    P.Product_Name,
    COUNT(R.Review_ID) AS Total_Reviews,
    ROUND(AVG(R.Rating), 2) AS Average_Rating
FROM Product P
LEFT JOIN Review R
ON P.Product_ID = R.Product_ID
GROUP BY P.Product_ID, P.Product_Name;