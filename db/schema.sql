-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;
DROP DATABASE IF EXISTS Category;
DROP DATABASE IF EXISTS Product;
DROP DATABASE IF EXISTS Tag;
DROP DATABASE IF EXISTS ProductTag;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
CREATE DATABASE Category;
CREATE DATABASE Product;
CREATE DATABASE Tag;
CREATE DATABASE ProductTag;

CREATE TABLE Category (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_name TINYTEXT NOT NULL
);

CREATE TABLE Product(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name TINYTEXT NOT NULL,
    price DECIMAL(8,2) NOT NULL DECIMAL,
    -- needs value to varify is decimal
    stock INTEGER NOT NULL BIT(10) NUMERIC,
    -- ^needs to validate value is numeric
    category_id INTEGER
    --  ^needs to correctly reference categorys id
);

CREATE TABLE Tag(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name TINYTEXT
);

CREATE TABLE ProductTag(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INTEGER,
    -- ^needs to reference product models id
    tag_id INTEGER 
    -- needs to reference tad models id
);

