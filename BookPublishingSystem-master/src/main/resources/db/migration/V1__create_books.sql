CREATE TABLE books
(
isbn NUMERIC(13),
title VARCHAR(30) NOT NULL,
author VARCHAR(30) NOT NULL,
publish_date DATE,
content VARCHAR(500),
price DOUBLE(6,2) NOT NULL,
status VARCHAR(10),
image_url VARCHAR(100),
CONSTRAINT isbn_pk PRIMARY KEY (isbn),
CONSTRAINT price_cq CHECK ( price>0 ),
CONSTRAINT status_cq CHECK (status IN('draft','published')));

INSERT INTO books (isbn, title, author, publish_date, content, price, status, image_url) VALUES 
( 
7781561925253, 
'Harry Potter', 
'J.K. ROWLING', 
STR_TO_DATE('12/12/1998','%d/%m/%Y') , 
'The novels chronicle the life of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley',
499.00, 
'PUBLISHED',
'bookList/images/harry-potter.jpg'
);

INSERT INTO books (isbn, title, author, publish_date, content, price, status, image_url) VALUES 
( 
8881550725379, 
'Twilight', 
'STEPHANIE MEYER', 
STR_TO_DATE('16/07/2004','%d/%m/%Y') , 
'When Bella Swan relocates to Forks, Washington, to live with her father, she meets a mysterious Edward Cullen to whom she finds herself drawn. Later, she discovers that he is a vampire',
599.50, 
'PUBLISHED',
'bookList/images/twilight.jpg'
);

INSERT INTO books (isbn, title, author, publish_date, content, price, status, image_url) VALUES
( 
9781447282068, 
'Truthwitch', 
'SUSAN DENNARD', 
 NULL, 
'Truthwitch by Susan Dennard is a brilliantly imagined coming-of-age story perfect for fans of Robin Hobb, Sarah J. Maas and Trudi Canavan. In a continent on the edge of war, two witches hold its fate in their hands.Young witches Safiya and Iseult have a habit of finding trouble. ',
275.50, 
'DRAFT',
'bookList/images/truthwitch.jpg'
);

INSERT INTO books (isbn, title, author, publish_date, content, price, status, image_url) VALUES 
( 
9780552159715, 
'The Da Vinci Code', 
'DAN BROWN', 
STR_TO_DATE('15/04/2003','%d/%m/%Y') , 
'The Da Vinci Code is the 2003 novel written by Dan Brown. It follows Harvard professor and symbologist Robert Langdon and the gifted French cryptologist Sophie Neveu as they investigate a murder in Paris Louvre Museum.',
399.00, 
'PUBLISHED',
'bookList/images/DaVinciCode.jpg'
);

INSERT INTO books (isbn, title, author, publish_date, content, price, status, image_url) VALUES 
( 
9780439023511, 
'Hunger Games: Mockingjay', 
'SUZANNE COLLINS', 
STR_TO_DATE('25/08/2010','%d/%m/%Y') , 
'Mockingjay is a 2010 science fiction novel by American author Suzanne Collins. It is the last installment of The Hunger Games, following 2008s The Hunger Games and 2009s Catching Fire.',
375.00, 
'PUBLISHED',
'bookList/images/mockingjay.jpg'
);

INSERT INTO books (isbn, title, author, publish_date, content, price, status, image_url) VALUES 
( 
9780582186552, 
'The Hobbit', 
'J.R.R.TOLKIEN',
STR_TO_DATE('21/09/1937','%d/%m/%Y') , 
'The Hobbit, or There and Back Again is a childrens fantasy novel by English author J. R. R. Tolkien. The book remains popular and is recognized as a classic in childrens literature.',
199.00, 
'PUBLISHED',
'bookList/images/the-hobbit.jpg'
);