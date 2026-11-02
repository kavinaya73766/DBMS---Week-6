USE ecommerce_db;
DESC customer;

DESC product;
USE ecommerce_db;

CREATE TABLE Review (
    Review_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Rating INT NOT NULL,
    Review_Text VARCHAR(500),
    Review_Date DATE NOT NULL,

    FOREIGN KEY (Customer_ID)
    REFERENCES customer(Customer_Id),

    FOREIGN KEY (Product_ID)
    REFERENCES product(Product_ID),

    CHECK (Rating BETWEEN 1 AND 5)
);
DESC Review;
SHOW TABLES;