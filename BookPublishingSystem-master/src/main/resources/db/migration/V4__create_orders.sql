CREATE TABLE orders
(
 order_id INT AUTO_INCREMENT,
 user_id INT,
 total_amount DOUBLE(7,2) NOT NULL DEFAULT 0,
 order_date TIMESTAMP DEFAULT NOW(),
 cancelled_date DATETIME,
 status VARCHAR(20) DEFAULT 'ordered' ,
 CONSTRAINT sales_id_pk PRIMARY KEY ( order_id ),
 CONSTRAINT id_book_sales_fk FOREIGN KEY (user_id) REFERENCES users (id),
 CONSTRAINT total_amount_cq CHECK (total_amount > 0),
 CONSTRAINT status_cq CHECK(status IN ('ordered', 'cancelled', 'delivered'))
 );