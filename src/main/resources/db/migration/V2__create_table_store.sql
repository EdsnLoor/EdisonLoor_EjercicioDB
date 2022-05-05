CREATE TABLE store (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(300) NOT NULL,
    UNIQUE(name),
    PRIMARY KEY (id)
);

INSERT INTO store (name, address)
VALUES ('Tienda 1', 'Av. Amazonas y Colon');

INSERT INTO store (name, address)
VALUES ('Tienda 2', 'Av. 12 de Octubre y Patria');
