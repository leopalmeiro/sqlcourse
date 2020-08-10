--E-COMMERCE

CREATE TABLE USERS_GENDER(
    ID CHAR(1) NOT NULL PRIMARY KEY
    DESCR VARCHAR NOT NULL UNIQUE,
    DT_CREATED DATETIME NOT NULL,
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

CREATE TABLE USER_STATUS(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DESCR VARCHAR(255) NOT NULL UNIQUE,
    DT_CREATED DATETIME NOT NULL
);
INSERT INTO USER_STATUS (DESCR, DT_CREATED) VALES ('ACTIVE', NOW());
INSERT INTO USER_STATUS (DESCR, DT_CREATED) VALES ('DESACTIVE', NOW());
INSERT INTO USER_STATUS (DESCR, DT_CREATED) VALES ('BLOCKED', NOW());
INSERT INTO USER_STATUS (DESCR, DT_CREATED) VALES ('PENDING VALIDATION', NOW());


-- NOT USED
CREATE TABLE PROFILES(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    PROFILE_NAME VARCHAR NOT NULL UNIQUE,
    DT_CREATED DATETIME NOT NULL;
);
INSERT INTO PROFILES (PROFILE_NAME, DT_CREATED) VALUES ('ADMIN', NOW());
INSERT INTO PROFILES (PROFILE_NAME, DT_CREATED) VALUES ('SYSTEM USER', NOW());
INSERT INTO PROFILES (PROFILE_NAME, DT_CREATED) VALUES ('CLIENT', NOW());


CREATE TABLE USERS(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    DT_BIRTH DATE NOT NULL,
    EMAIL VARCHAR(255) NOT NULL,
    PASS VARCHAR(255) NOT NULL,
    FK_USERS_GENDER CHAR(1) NOT NULL,
    FK_USER_STATUS INT NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    DT_UPDATED DATETIME,
    FOREIGN KEY (FK_USERS_GENDER) REFERENCES USERS_GENDER (ID),
    FOREIGN KEY (FK_USER_STATUS) REFERENCES USER_STATUS (ID)
);

INSERT INTO USERS(NAME, DT_BIRTH, EMAIL, PASS, FK_USERS_GENDER, FK_USER_STATUS, DT_CREATED) VALUES('LEONARDO PALMEIRO', '1984-10-09', 'PALMEIRO.LEONARDO@GMAIL.COM', MD5('123'),2, 4. NOW(), NULL);

-- FINISH FIRST PART

CREATE TABLE PRODUCTS_STATUS(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DESCR VARCHAR(255),
    DT_CREATED DATETIME
);
INSERT INTO PRODUCTS_STATUS ('DESCR', DT_CREATED ) VALUES ('ACTIVE', NOW());
INSERT INTO PRODUCTS_STATUS ('DESCR', DT_CREATED ) VALUES ('DESACTIVE', NOW());

CREATE TABLE PRODUCTS(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    TITLE VARCHAR(255) NOT NULL,
    SUBTITLE VARCHAR(255),
    DESCR VARCHAR(255),
    PRICE DOUBLE NOT NULL,
    IMAGE VARCHAR(255),
    FK_PRODUCTS_STATUS INT NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    DT_UPDATED DATETIME,
    FK_USER_CREATED INT NOT NULL,
    ISDESTAC BOOLEAN NOT NULL,
    FOREIGN KEY (FK_USER_CREATED) REFERENCES USERS (ID),
    FOREIGN KEY (FK_PRODUCTS_STATUS) REFERENCES PRODUCTS_STATUS (ID)
);

INSERT INTO PRODUCTS (DESCR, PRICE, IMAGE, FK_PRODUCTS_STATUS, DT_CREATED,  FK_USER_CREATED, ISDESTAC) VALUES ('MACBOOK PRO 2020', 2.000, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp13touch-space-select-202005_GEO_ES?wid=452&hei=420&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1587460259145', 1, NOW(), 1, FALSE );



CREATE TABLE CATEGORIES(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TITLE VARCHAR(255) NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    DT_UPDATED DATETIME
);
INSERT INTO CATEGORIES (TITLE, DT_CREATED) VALUES ('COMPUTER', NOW());

--CATEGORIES_PRODUCTS
CREATE TABLE CATEGORIES_PRODUCTS(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FK_PRODUCTS_ID INT NOT NULL,
    FK_CATEGORIES_ID INT NOT NULL,
    FOREIGN KEY (FK_PRODUCTS_ID) REFERENCES PRODUCTS(ID),
    FOREIGN KEY (FK_CATEGORIES_ID) REFERENCES CATEGORIES(ID)
);

INSERT INTO CATEGORIES_PRODUCTS VALUES (1,1);


-- WHEN USER TRY TO FIND
CREATE TABLE USERS_FIND(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    QUERY VARCHAR(255) NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    FK_USERS_ID INT NOT NULL
    FOREIGN KEY (FK_USERS_ID) REFERENCES USERS (ID);
);
INSERT INTO USERS_FIND (QUERY, DT_CREATED, FK_USERS_ID) VALUES ('TECLADO', NOW(), 1);


CREATE TABLE USERS_LIKE(
    ID INT NOT NULL AUTO_INCREMENT,
    FK_USERS_ID INT NOT NULL,
    FK_PRODUCTS_ID INT NOT NULL,
    DT_CREATED DATETIME NOT NULL,
    PRIMARY KEY(ID, FK_USERS_ID, FK_PRODUCTS_ID),
    FOREIGN KEY (FK_USERS_ID) REFERENCES USERS (ID),
    FOREIGN KEY (FK_PRODUCTS_ID) REFERENCES USER (ID);
)
INSERT INTO USERS_LIKE(FK_USERS_ID, FK_PRODUCTS_ID, DT_CREATED) VALUES (1, 1, NOW());


 --TABLE WITH AUTO RELASIONSHIP
CREATE TABLE MENU(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DESCR VARCHAR(255) NOT NULL UNIQUE,
    FK_MENU INT,
    DT_CREATED DATETIME NOT NULL,
    ISACTIVE BOOLEAN NOT NULL,
    ACTION VARCHAR(255),
    FOREIGN KEY (FK_MENU) REFERENCES MENU (ID);
);
INSERT INTO MENU (DESCR, FK_MENU, DT_CREATED, ISACTIVE, ACTION) VALUES ('AMAZON BASICS', NULL, NOW(), TRUE, NULL);
INSERT INTO MENU (DESCR, FK_MENU, DT_CREATED, ISACTIVE, ACTION) VALUES ('AMAZON.ES', 1, NOW(), TRUE, 'OPENSUBMENU01');
INSERT INTO MENU (DESCR, FK_MENU, DT_CREATED, ISACTIVE, ACTION) VALUES ('LOS MÁS VENDIDOS', 1, NOW(), FALSE, 'OPENSUBMENU02');
INSERT INTO MENU (DESCR, FK_MENU, DT_CREATED, ISACTIVE, ACTION) VALUES ('OFERTAS', NULL, NOW(), TRUE, 'OPENSUBMENU03');



CREATE TABLE CHANNEL(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DESCR VARCHAR(255) NOT NULL,
    DT_CREATED DATETIME, NOT NULL
);
INSERT INTO CHANNEL VALUES('DESKTOP APP', NOW());
INSERT INTO CHANNEL VALUES('MOBILE APP', NOW());
INSERT INTO CHANNEL VALUES('FIREFOX', NOW());
INSERT INTO CHANNEL VALUES('CHROME', NOW());

CREATE TABLE BASKET_STATUS(
    ID INT NOT NULL AUTO_INCREMENT,
    DESCR VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID, DESCR);
);
INSERT INTO  BASKET_STATUS (DESCR) VALUES ('FINISHED');
INSERT INTO  BASKET_STATUS (DESCR) VALUES ('PENDING');
INSERT INTO  BASKET_STATUS (DESCR) VALUES ('DELETED');

CREATE TABLE BASKET(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FK_STATUS_BASKET INT NOT NULL,
    DT_CREATED DATETIME NOT NULL,    
    FK_USER_ID INT NOT NULL,
    FOREIGN KEY FK_USER_ID REFERENCES USERS (ID),
    FOREIGN KEY FK_STATUS_BASKET REFERENCES STATUS_BASKET(ID)
);
INSERT INTO BASKET (FK_STATUS_BASKET, FK_PROMOTION, DT_CREATED) VALUES (1, NULL, NOW(), 1);

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

CREATE TABLE PROMOTIONS(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY
    DESCOUNT DOUBLE,
    FK_USER INT NOT NULL
    DT_CREATED DATETIME NOT NULL,
    DT_START DATETIME NOT NULL,
    DT_FINISH DATETIME NOT NULL,
    ISACTIVE BOOLEAN NOT NULL
);

INSERT INTO PROMOTIONS (DESCOUNT, FK_USER, DT_CREATED, DT_START, DT_FINISH, ISACTIVE) VALUES (0.2, 1, NOW(), NOW(), NOW(), TRUE);

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


