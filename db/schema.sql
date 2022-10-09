-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;
DROP DATABASE IF EXISTS Category;
DROP DATABASE IF EXISTS Product;
DROP DATABASE IF EXISTS Tag;
DROP DATABASE IF EXISTS ProductTag;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
CREATE DATABASE Category (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_name NOT NULL
    -- ^needs to have string requirement
);

CREATE DATABASE Product(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name NOT NULL,
    -- ^needs to have string,validate value is decimal
    price DECIMAL NOT NULL,
    -- ^needs to validate value is decimal
    stock INTEGER NOT NULL ,
    -- ^needs to validate value is numeric
    category_id INTEGER REFERENCES category(id)
    --  ^needs to correctly reference categorys id
);

CREATE DATABASE Tag(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name
    --  needs string
);

CREATE DATABASE ProductTag(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INTEGER,
    -- ^needs to reference product models id
    tag_id INTEGER 
    -- needs to reference tad models id
);
