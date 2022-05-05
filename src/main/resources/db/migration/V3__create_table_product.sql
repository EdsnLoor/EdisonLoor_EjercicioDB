CREATE TABLE product (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(300) NOT NULL,
    price DECIMAL(19, 2) NOT NULL,
    store_id INT NOT NULL,
    UNIQUE (name, store_id),
    PRIMARY KEY (id),
    FOREIGN KEY (store_id) REFERENCES store (id)
);

SET @STORE_ID = SELECT id FROM store WHERE name = 'Tienda 1';

INSERT INTO product (name, description, price, store_id)
VALUES ('Galletas oreo', 'Galletas oreo', 0.45, @STORE_ID);
