USE ecommerce_db;

INSERT INTO Review
(Review_ID, Customer_ID, Product_ID, Rating, Review_Text, Review_Date)
VALUES
('R101', 1, 1, 5, 'Excellent performance', '2026-11-01'),
('R102', 2, 2, 4, 'Good battery life', '2026-11-01'),
('R103', 3, 1, 3, 'Average product quality', '2026-11-02');

SELECT * FROM Customer;
SELECT * FROM Product;
SELECT * FROM Review;