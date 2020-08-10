--E-COMMERCE

CREATE TABLE USERS_GENDER(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    DESCR VARCHAR(255) NOT NULL UNIQUE,
    DT_CREATED DATETIME NOT NULL
);

INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('No Informed', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Male', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Female', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Agender', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Androgyne', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Androgynous', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Bigender', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Cis', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Cisgender', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Cis Female', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Cis Male', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Cis Man', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Cis Woman', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Cisgender Female', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Cisgender Male', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Cisgender Man', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Cisgender Woman', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Female to Male', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('FTM', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Gender Fluid', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Gender Nonconforming', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Gender Questioning', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Gender Variant', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Genderqueer', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Intersex', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Male to Female', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('MTF', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Neither', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Neutrois', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Non-binary', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Other', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Pangender', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Trans', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Trans Female', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Trans Male', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Trans Man', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Trans Person', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Trans Woman', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transfeminine', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transgender', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transgender Female', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transgender Male', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transgender Man', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transgender Person', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transgender Woman', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transmasculine', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transsexual', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transsexual Female', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transsexual Male', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transsexual Man', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transsexual Person', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Transsexual Woman', now());
INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('Two-Spirit', now());


INSERT INTO USERS_GENDER (DESCR, DT_CREATED) VALUES ('No Informed', now()); -- ERROR

SELECT * FROM USERS_GENDER;

CREATE TABLE USER_STATUS(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DESCR VARCHAR(255) NOT NULL UNIQUE,
    DT_CREATED DATETIME NOT NULL
);
INSERT INTO USER_STATUS (DESCR, DT_CREATED) VALUES ('ACTIVE', NOW());
INSERT INTO USER_STATUS (DESCR, DT_CREATED) VALUES ('DESACTIVE', NOW());
INSERT INTO USER_STATUS (DESCR, DT_CREATED) VALUES ('BLOCKED', NOW());
INSERT INTO USER_STATUS (DESCR, DT_CREATED) VALUES ('PENDING VALIDATION', NOW());

SELECT * FROM USER_STATUS;

CREATE TABLE USERS(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    DT_BIRTH DATE NOT NULL,
    EMAIL VARCHAR(255) NOT NULL,
    PASS VARCHAR(255) NOT NULL,
    FK_USERS_GENDER INT NOT NULL,
    FK_USER_STATUS INT NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    DT_UPDATED DATETIME,
    FOREIGN KEY (FK_USERS_GENDER) REFERENCES USERS_GENDER (ID),
    FOREIGN KEY (FK_USER_STATUS) REFERENCES USER_STATUS (ID)
);

INSERT INTO USERS(NAME, DT_BIRTH, EMAIL, PASS, FK_USERS_GENDER, FK_USER_STATUS, DT_CREATED, DT_UPDATED) VALUES('LEONARDO PALMEIRO', '1984-10-09', 'PALMEIRO.LEONARDO@GMAIL.COM', MD5('123'), 2, 4, NOW(), NULL);
INSERT INTO USERS(NAME, DT_BIRTH, EMAIL, PASS, FK_USERS_GENDER, FK_USER_STATUS, DT_CREATED, DT_UPDATED) VALUES('LEANDRO PALMEIRO', '1974-03-05', 'PALMEIRO.LEANDRO@GMAIL.COM', MD5('123'), 2, 4, NOW(), NULL);

SELECT * FROM USERS;

--EMAIL VERIFICATION
--1)
SELECT * FROM USERS
WHERE FK_USER_STATUS = 4;
--2)
UPDATE USERS SET FK_USER_STATUS = 1 WHERE ID = 1;
--ANOTHER WAY TO DO A SELECT
SELECT * FROM USERS
WHERE FK_USER_STATUS IN (1,4);

--CREATE A PRODUCT
CREATE TABLE PRODUCTS_STATUS(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    STATUS CHAR(1) UNIQUE,
    DESCR VARCHAR(255) NOT NULL,
    DT_CREATED DATETIME
);
INSERT INTO PRODUCTS_STATUS (STATUS, DESCR, DT_CREATED ) VALUES ('A', 'ACTIVE', NOW());
INSERT INTO PRODUCTS_STATUS (STATUS, DESCR, DT_CREATED ) VALUES ('D', 'DESACTIVE', NOW());

SELECT * FROM PRODUCTS_STATUS;

CREATE TABLE PRODUCTS(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    TITLE VARCHAR(255) NOT NULL,
    SUBTITLE VARCHAR(255),
    DESCR VARCHAR(255),
    PRICE DOUBLE NOT NULL,
    IMAGE VARCHAR(255),
    FK_PRODUCTS_STATUS CHAR(1) NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    DT_UPDATED DATETIME,
    ISDESTAC BOOLEAN NOT NULL,
    FOREIGN KEY (FK_PRODUCTS_STATUS) REFERENCES PRODUCTS_STATUS (STATUS)
);

INSERT INTO PRODUCTS (TITLE, SUBTITLE, DESCR, PRICE, IMAGE, FK_PRODUCTS_STATUS, DT_CREATED, DT_UPDATED, ISDESTAC) VALUES ('Portatil MSI', 'MSI GE66 Raider 10SF-056XES', 'Intel Core i7-10750H/32GB/1TB SSD/RTX 2070/15.6', 2189.00, 'msi-ge66-raider-10sf-056xes-intel-core-i7-10750h-32gb-1tb-ssd-rtx-2070-156.jpg', 'A', NOW(), NULL,  FALSE );
INSERT INTO PRODUCTS (TITLE, SUBTITLE, DESCR, PRICE, IMAGE, FK_PRODUCTS_STATUS, DT_CREATED, DT_UPDATED, ISDESTAC) VALUES ('Portatil MSI', 'MSI Modern 14 A10RAS-871XES', 'Intel Core I7-10510U/16GB/512GB SSD/MX330/14', 999.00, 'msi-modern-14-a10ras-871xes-intel-core-i7-10510u-16gb-512gb-ssd-mx330-14.jpg', 'A', NOW(), NULL,  FALSE );
INSERT INTO PRODUCTS (TITLE, SUBTITLE, DESCR, PRICE, IMAGE, FK_PRODUCTS_STATUS, DT_CREATED, DT_UPDATED, ISDESTAC) VALUES ('Portatil HP', 'HP 15S-FQ1120NS Intel Core', 'Intel Core i5-1035G1/8GB/512GB SSD/15.6', 590.00, 'hp-15s-fq1120ns-intel-core-i5-1035g1-8gb-512gb-ssd-156.jpg', 'A', NOW(), NULL,  FALSE );
INSERT INTO PRODUCTS (TITLE, SUBTITLE, DESCR, PRICE, IMAGE, FK_PRODUCTS_STATUS, DT_CREATED, DT_UPDATED, ISDESTAC) VALUES ('Portatil LENOVO', 'Lenovo Ideapad S540-15IWL', 'Intel Core i7-8565U/8GB/512GB SSD/15.6', 1009.40, 'lenovo-ideapad-s540-15iwl-intel-core-i7-8565u-8gb-512gb-ssd-156.jpg', 'A', NOW(), NULL,  FALSE );
INSERT INTO PRODUCTS (TITLE, SUBTITLE, DESCR, PRICE, IMAGE, FK_PRODUCTS_STATUS, DT_CREATED, DT_UPDATED, ISDESTAC) VALUES ('Portatil MSI', 'MSI GE69 Raider 10SF-056XES', 'Intel Core i7-10750H/32GB/1TB SSD/RTX 2070/15.6', 2000.00, 'msi-ge66-raider-10sf-056xes-intel-core-i7-10750h-32gb-1tb-ssd-rtx-2070-156.jpg', 'A', NOW(), NULL,  FALSE );
INSERT INTO PRODUCTS (TITLE, SUBTITLE, DESCR, PRICE, IMAGE, FK_PRODUCTS_STATUS, DT_CREATED, DT_UPDATED, ISDESTAC) VALUES ('Portatil MSI', 'MSI Modern 15 A10RAS-871XES', 'Intel Core I7-10510U/16GB/512GB SSD/MX330/14', 920.10, 'msi-modern-14-a10ras-871xes-intel-core-i7-10510u-16gb-512gb-ssd-mx330-14.jpg', 'A', NOW(), NULL,  FALSE );
INSERT INTO PRODUCTS (TITLE, SUBTITLE, DESCR, PRICE, IMAGE, FK_PRODUCTS_STATUS, DT_CREATED, DT_UPDATED, ISDESTAC) VALUES ('Portatil HP', 'HP 13S-FQ1120NS', 'Intel Core i5-1035G1/8GB/512GB SSD/15.6', 500.00, 'hp-15s-fq1120ns-intel-core-i5-1035g1-8gb-512gb-ssd-156.jpg', 'A', NOW(), NULL,  FALSE );
INSERT INTO PRODUCTS (TITLE, SUBTITLE, DESCR, PRICE, IMAGE, FK_PRODUCTS_STATUS, DT_CREATED, DT_UPDATED, ISDESTAC) VALUES ('Portatil LENOVO', 'Lenovo Ideapad S540-13IWL', 'Intel Core i7-8565U/8GB/512GB SSD/15.6', 800.20, 'lenovo-ideapad-s540-15iwl-intel-core-i7-8565u-8gb-512gb-ssd-156.jpg', 'A', NOW(), NULL,  FALSE );

SELECT * FROM PRODUCTS;


CREATE TABLE TAGS(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TITLE VARCHAR(255) NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    DT_UPDATED DATETIME
);
INSERT INTO TAGS (TITLE, DT_CREATED) VALUES ('COMPUTER', NOW());
INSERT INTO TAGS (TITLE, DT_CREATED) VALUES ('LAPTOP', NOW());
INSERT INTO TAGS (TITLE, DT_CREATED) VALUES ('ELETRONIC', NOW());
INSERT INTO TAGS (TITLE, DT_CREATED) VALUES ('HP', NOW());
INSERT INTO TAGS (TITLE, DT_CREATED) VALUES ('DELL', NOW());

--CATEGORIES_PRODUCTS
CREATE TABLE TAGS_PRODUCTS(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FK_PRODUCTS_ID INT NOT NULL,
    FK_TAGS_ID INT NOT NULL,
    FOREIGN KEY (FK_PRODUCTS_ID) REFERENCES PRODUCTS(ID),
    FOREIGN KEY (FK_TAGS_ID) REFERENCES TAGS(ID)
);

INSERT INTO TAGS_PRODUCTS (FK_PRODUCTS_ID, FK_TAGS_ID) VALUES (1,1);
INSERT INTO TAGS_PRODUCTS (FK_PRODUCTS_ID, FK_TAGS_ID) VALUES (1,2);
INSERT INTO TAGS_PRODUCTS (FK_PRODUCTS_ID, FK_TAGS_ID) VALUES (1,2);
INSERT INTO TAGS_PRODUCTS (FK_PRODUCTS_ID, FK_TAGS_ID) VALUES (3,1);
INSERT INTO TAGS_PRODUCTS (FK_PRODUCTS_ID, FK_TAGS_ID) VALUES (3,2);
INSERT INTO TAGS_PRODUCTS (FK_PRODUCTS_ID, FK_TAGS_ID) VALUES (3,3);
INSERT INTO TAGS_PRODUCTS (FK_PRODUCTS_ID, FK_TAGS_ID) VALUES (3,4);
 
-- A LOT OF SELECTS


-- WHEN USER TRY TO FIND
CREATE TABLE USERS_FIND(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    QUERY VARCHAR(255) NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    FK_USERS_ID INT NOT NULL,
    FOREIGN KEY (FK_USERS_ID) REFERENCES USERS (ID)
);
INSERT INTO USERS_FIND (QUERY, DT_CREATED, FK_USERS_ID) VALUES ('KEYBOARD', NOW(), 1);
INSERT INTO USERS_FIND (QUERY, DT_CREATED, FK_USERS_ID) VALUES ('LAPTOP', NOW(), 2);


CREATE TABLE USERS_LIKE(
    ID INT NOT NULL AUTO_INCREMENT,
    FK_USERS_ID INT NOT NULL,
    FK_PRODUCTS_ID INT NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    PRIMARY KEY(ID, FK_USERS_ID, FK_PRODUCTS_ID),
    FOREIGN KEY (FK_USERS_ID) REFERENCES USERS (ID),
    FOREIGN KEY (FK_PRODUCTS_ID) REFERENCES PRODUCTS (ID)
);

INSERT INTO USERS_LIKE(FK_USERS_ID, FK_PRODUCTS_ID, DT_CREATED) VALUES (1, 1, NOW());
INSERT INTO USERS_LIKE(FK_USERS_ID, FK_PRODUCTS_ID, DT_CREATED) VALUES (1, 2, NOW());
INSERT INTO USERS_LIKE(FK_USERS_ID, FK_PRODUCTS_ID, DT_CREATED) VALUES (1, 3, NOW());

SELECT * FROM USERS_LIKE;

 --TABLE WITH AUTO RELASIONSHIP
CREATE TABLE MENU(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DESCR VARCHAR(255) NOT NULL UNIQUE,
    FK_MENU INT,
    DT_CREATED DATETIME NOT NULL,
    ISACTIVE BOOLEAN NOT NULL,
    ACTION VARCHAR(255),
    FOREIGN KEY (FK_MENU) REFERENCES MENU (ID)
);
INSERT INTO MENU (DESCR, FK_MENU, DT_CREATED, ISACTIVE, ACTION) VALUES ('AMAZON BASICS', NULL, NOW(), TRUE, NULL);
INSERT INTO MENU (DESCR, FK_MENU, DT_CREATED, ISACTIVE, ACTION) VALUES ('AMAZON.ES', 1, NOW(), TRUE, 'OPENSUBMENU01');
INSERT INTO MENU (DESCR, FK_MENU, DT_CREATED, ISACTIVE, ACTION) VALUES ('LOS MÁS VENDIDOS', 1, NOW(), FALSE, 'OPENSUBMENU02');
INSERT INTO MENU (DESCR, FK_MENU, DT_CREATED, ISACTIVE, ACTION) VALUES ('OFERTAS', NULL, NOW(), TRUE, 'OPENSUBMENU03');

SELECT * FROM MENU;

CREATE TABLE PROMOTIONS(
    DISCOUNT_CODE VARCHAR(255) UNIQUE PRIMARY KEY,
    DISCOUNT_VALUE DOUBLE NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    DT_START DATETIME NOT NULL,
    DT_FINISH DATETIME NOT NULL,
    ISACTIVE BOOLEAN NOT NULL
);

INSERT INTO PROMOTIONS (DISCOUNT_CODE, DISCOUNT_VALUE, DT_CREATED, DT_START, DT_FINISH, ISACTIVE) VALUES ('PROMOCODE01', 0.2, NOW(), NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY), TRUE);
INSERT INTO PROMOTIONS (DISCOUNT_CODE, DISCOUNT_VALUE, DT_CREATED, DT_START, DT_FINISH, ISACTIVE) VALUES ('PROMOCODE02', 0.08, NOW(), NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY), TRUE);
INSERT INTO PROMOTIONS (DISCOUNT_CODE, DISCOUNT_VALUE, DT_CREATED, DT_START, DT_FINISH, ISACTIVE) VALUES ('PROMOCODE03', 0.1, NOW(), NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY), TRUE);
INSERT INTO PROMOTIONS (DISCOUNT_CODE, DISCOUNT_VALUE, DT_CREATED, DT_START, DT_FINISH, ISACTIVE) VALUES ('PROMOCODE04', 0.05, NOW(), NOW(), DATE_ADD(NOW(), INTERVAL 1 DAY), TRUE);

CREATE TABLE BASKET_STATUS(
    ID INT NOT NULL AUTO_INCREMENT,
    DESCR VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID, DESCR)
);

INSERT INTO  BASKET_STATUS (DESCR) VALUES ('FINISHED');
INSERT INTO  BASKET_STATUS (DESCR) VALUES ('PENDING');
INSERT INTO  BASKET_STATUS (DESCR) VALUES ('DELETED');

CREATE TABLE BASKET(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FK_STATUS_BASKET INT NOT NULL,
    DT_CREATED DATETIME NOT NULL,    
    FK_USER_ID INT NOT NULL,
    FOREIGN KEY (FK_USER_ID) REFERENCES USERS (ID),
    FOREIGN KEY (FK_STATUS_BASKET) REFERENCES BASKET_STATUS(ID)
);
INSERT INTO BASKET (FK_STATUS_BASKET, DT_CREATED, FK_USER_ID) VALUES (1,  NOW(), 1);

CREATE TABLE ITEMS_BASKET(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FK_PRODUCT_ID INT NOT NULL,
    QUANTID INT NOT NULL,
    PRICE DOUBLE NOT NULL, -- FOR DONT UPDATED PRICE WHEN PRODUCTS BE CHANGED
    FK_PROMOTION_ID INT, 
    FK_BASKET_ID INT NOT NULL,
    DT_CREATED DATETIME NOT NULL,    
    FOREIGN KEY FK_PROMOTION REFERENCES PROMOTION(ID),
    FOREIGN KEY FK_PRODUCT_ID REFERENCES PRODUCTS (ID),
    FOREIGN KEY FK_BASKET_ID REFERENCES BASKET (ID)
);
INSERT INTO ITEMS_BASKET (FK_PRODUCT_ID, QUANTID, PRICE, FK_PROMOTION_ID,  FK_BASKET_ID, DT_CREATED) VALUES (1, 4, 10.00, 1, 1,NOW());

-- WITH NOSQL
--BASKET
--{
--    BASKET_ID : 00001,
--    BASKET_STATUS: "PENDING",
--    PROMOTION_CODE: "011ASAD",
--    BASKET_TOT: 2000.00
--    PRODUCTS : [
--        ID_PRODUCTS: 01,
--        PRODUCTS_NAME: 'MACBOOK 13',
--        PRODUCT_PRICE: 2000.00,
--    ]
--}



CREATE TABLE PAYMENT_TYPE(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DESCR VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO PAYMENT_TYPE (DESCR) VALUES ('MONEY');
INSERT INTO PAYMENT_TYPE (DESCR) VALUES ('CARD');
INSERT INTO PAYMENT_TYPE (DESCR) VALUES ('ACCOUNT TRANSFER');


CREATE TABLE PAYMENT_STATUS(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY_KEY,
    DESCR VARCHAR(255) NOT NULL,
);

CREATE TABLE ITENS_SALES(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FK_PRODUCT_ID INT NOT NULL,
    QUANTID INT NOT NULL,
    PRICE DOUBLE NOT NULL, -- FOR DONT UPDATED PRICE WHEN PRODUCTS BE CHANGED
    FK_PROMOTION_ID INT, 
    FK_BASKET_ID INT NOT NULL,
    DT_CREATED DATETIME NOT NULL,    
    FOREIGN KEY FK_PROMOTION REFERENCES PROMOTION(ID),
    FOREIGN KEY FK_PRODUCT_ID REFERENCES PRODUCTS (ID),
    FOREIGN KEY FK_BASKET_ID REFERENCES BASKET (ID)
);
INSERT INTO ITEMS_BASKET (FK_PRODUCT_ID, QUANTID, PRICE, FK_PROMOTION_ID,  FK_BASKET_ID, DT_CREATED) VALUES (1, 4, 10.00, 1, 1,NOW());
 

CREATE TABLE SALES(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DT_PAYMENT DATETIME NOT NULL,
    FK_PAYMENT_TYPE INT NOT NULL, 
    FK_STATUS_PAYMENT INT NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    DT_AUTHORIZED DATETIME,
    AUTHORIDED_CODE VARCHAR(255),
    FK_ITENS_SALES INT,
    FOREIGN KEY (FK_PAYMENT_TYPE) REFERENCES PAYMENTT_TYPE(ID),
    FOREIGN KEY (FK_STATUS_PAYMENT) REFERENCES FK_STATUS_PAYMENT(ID),
    FOREIGN KEY (FK_ITENS_SALES) REFERENCES FK_ITENS_SALES(ID);
);

INSERT INTO SALES (DT_PAYMENT, FK_PAYMENT_TYPE, FK_STATUS_PAYMENT,  DT_CREATED, DT_AUTHORIZED, AUTHORIDED_CODE) VALUES (NOW(), 1, 1, NOW(), NULL);

--EMAIL PENDIND


