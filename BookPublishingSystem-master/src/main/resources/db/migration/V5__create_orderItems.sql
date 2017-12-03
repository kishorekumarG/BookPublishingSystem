CREATE TABLE order_items
(
items_id INT AUTO_INCREMENT,
orders_id INT NOT NULL,
book_isbn NUMERIC(13) NOT NULL,
quantity INT NOT NULL,
order_date TIMESTAMP DEFAULT NOW(),
CONSTRAINT items_id_pk PRIMARY KEY ( items_id ),
CONSTRAINT orders_id_fk FOREIGN KEY (orders_id) REFERENCES orders (order_id),
CONSTRAINT book_isbn_fk FOREIGN KEY (book_isbn) REFERENCES books (isbn)
);