DROP
    DATABASE IF EXISTS `village_green`;
CREATE
    DATABASE `village_green`;
USE
    `village_green`;
CREATE TABLE countries
(
    cou_id   int(10)     NOT NULL AUTO_INCREMENT,
    cou_name varchar(45) NOT NULL,
    PRIMARY KEY (cou_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE suppliers
(
    sup_id        int(10) NOT NULL AUTO_INCREMENT,
    sup_firstname VARCHAR(50),
    sup_lastname  VARCHAR(50),
    sup_address   VARCHAR(150),
    sup_cp        VARCHAR(15),
    sup_city      VARCHAR(50),
    sup_type      VARCHAR(50),
    sup_cou_id    int(10) NOT NULL,
    PRIMARY KEY (sup_id),
    CONSTRAINT `suppliers_fk_1` FOREIGN KEY (sup_cou_id) REFERENCES country (cou_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE categories
(
    cat_id        int(10)     NOT NULL AUTO_INCREMENT,
    cat_name      VARCHAR(50) NOT NULL,
    cat_parent_id int(10),
    PRIMARY KEY (cat_id),
    CONSTRAINT `category_ibfk_1` FOREIGN KEY (`cat_parent_id`) REFERENCES `category` (`cat_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE departments
(
    dep_id   int(10) NOT NULL AUTO_INCREMENT,
    dep_name VARCHAR(50),
    PRIMARY KEY (dep_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE posts
(
    pos_id   int(10) NOT NULL AUTO_INCREMENT,
    pos_name VARCHAR(50),
    PRIMARY KEY (pos_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE products
(
    pro_id          int(10) NOT NULL AUTO_INCREMENT,
    pro_name        VARCHAR(50),
    pro_description VARCHAR(150),
    pro_photo       VARCHAR(50),
    pro_label       VARCHAR(50),
    pro_ref         VARCHAR(50),
    pro_price       DECIMAL(5, 2),
    pro_status      INT,
    pro_stock       INT,
    pro_cat_id      INT     NOT NULL,
    pro_sup_id      INT     NOT NULL,
    PRIMARY KEY (pro_id),
    CONSTRAINT `products_category_fk_1` FOREIGN KEY (pro_cat_id) REFERENCES category (cat_id),
    CONSTRAINT `products_suppliers_fk_1` FOREIGN KEY (pro_sup_id) REFERENCES suppliers (sup_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE employees
(
    emp_id        int(10) NOT NULL AUTO_INCREMENT,
    emp_firstname VARCHAR(50),
    emp_lastname  VARCHAR(50),
    emp_address   VARCHAR(150),
    emp_cp        VARCHAR(15),
    emp_city      VARCHAR(50),
    emp_tel       VARCHAR(15),
    emp_dep_id    INT     NOT NULL,
    emp_post_id   INT     NOT NULL,
    emp_cou_id    int(10) NOT NULL,
    PRIMARY KEY (emp_id),
    CONSTRAINT `employees_departments_fk_1` FOREIGN KEY (emp_dep_id) REFERENCES departments (dep_id),
    CONSTRAINT `employees_posts_fk_1` FOREIGN KEY (emp_post_id) REFERENCES posts (post_id),
    CONSTRAINT `employees_country_fk_1` FOREIGN KEY (emp_cou_id) REFERENCES country (cou_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE customers
(
    cus_id               int(10) NOT NULL AUTO_INCREMENT,
    cus_firstname        VARCHAR(50),
    cus_lastname         VARCHAR(50),
    cus_address          VARCHAR(150),
    cus_cp               VARCHAR(15),
    cus_city             VARCHAR(50),
    cus_telephone        VARCHAR(15),
    cus_bill_address     VARCHAR(150),
    cus_bill_cp          VARCHAR(15),
    cus_bill_city        VARCHAR(50),
    cus_delivery_address VARCHAR(150),
    cus_delivery_cp      VARCHAR(15),
    cus_delivery_city    VARCHAR(50),
    cus_type             VARCHAR(50),
    cus_coef             INT,
    cus_emp_id           INT     NOT NULL,
    cus_cou_id           int(10) NOT NULL,
    PRIMARY KEY (cus_id),
    CONSTRAINT `customers_employee_fk1` FOREIGN KEY (cus_emp_id) REFERENCES employee (emp_id),
    CONSTRAINT `customer_country_fk1` FOREIGN KEY (cus_cou_id) REFERENCES country (cou_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE orders
(
    ord_id               int(10) NOT NULL AUTO_INCREMENT,
    ode_order_date       DATETIME,
    ord_date_payment     DATETIME,
    ord_date_ship        DATETIME,
    ord_date_delivery    DATETIME,
    ord_bill_address     VARCHAR(150),
    ord_bill_cp          VARCHAR(15),
    ord_bill_city        VARCHAR(50),
    ord_delivery_address VARCHAR(150),
    ord_delivery_cp      VARCHAR(15),
    ord_delivery_city    VARCHAR(50),
    ord_status           VARCHAR(50),
    ord_cus_id           INT     NOT NULL,
    PRIMARY KEY (ord_id),
    CONSTRAINT `orders_fk_1` FOREIGN KEY (ord_cus_id) REFERENCES customer (cus_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE orders_details
(
    ode_id         int(10) NOT NULL AUTO_INCREMENT,
    ode_unit_price DECIMAL(10, 2),
    ode_qte        INT(5),
    ode_discount   decimal(4, 2) DEFAULT NULL,
    ode_pro_id     int(10) NOT NULL,
    ode_ord_id     int(10) NOT NULL,
    PRIMARY KEY (ode_id),
    CONSTRAINT `orders_details_fk_1` FOREIGN KEY (ode_pro_id) REFERENCES products (pro_id),
    CONSTRAINT `orders_details_fk_2` FOREIGN KEY (ode_ord_id) REFERENCES orders (ord_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE habiter
(
    cus_id   INT(10),
    cou_id    INT(10),
    Address  VARCHAR(150),
    Zip_code VARCHAR(15),
    City     VARCHAR(50),
    Type     VARCHAR(50),
    PRIMARY KEY (cus_id, cou_id),
    FOREIGN KEY (cus_id) REFERENCES customers (cus_id),
    FOREIGN KEY (cou_id) REFERENCES countries (cou_id)
);