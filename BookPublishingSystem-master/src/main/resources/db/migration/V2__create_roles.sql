CREATE TABLE roles          
(
role_id INT ,
name VARCHAR(50) NOT NULL,
CONSTRAINT role_id_pk PRIMARY KEY ( role_id ),
CONSTRAINT role_id_cq CHECK ( role_id BETWEEN 1 AND 3 ),
CONSTRAINT name_cq CHECK ( name IN ('user', 'author', 'admin' ))
);

INSERT INTO roles (role_id, name) VALUES
(
1,
"admin"
);

INSERT INTO roles (role_id, name) VALUES
(
2,
"author"
);

INSERT INTO roles (role_id, name) VALUES
(
3,
"user"
);