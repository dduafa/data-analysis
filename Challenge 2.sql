# FRANK ASKED WE CREATE A DATABASE
CREATE DATABASE fulltime;

/* 'USE' COMMAND OR DOUBLE CLICK ON 'filltime' in Schemas*/
-- 'USE' COMMAND OR DOUBLE CLICK ON 'filltime' in Schemas
USE fulltime;

/* GROCERY LIST:
Bananas (4)
Peanut Butter (1)
Dark Chocolate Bars (2) */

# Creating a table for groceries
CREATE TABLE groceries (
id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER
);

INSERT INTO groceries
  VALUES (1, "Bananas", 4);
INSERT INTO groceries
  VALUES (2, "Peanut Butter", 1);
INSERT INTO groceries
  VALUES (3, "Chocolate Bars", 2);

# Day 2
DROP TABLE groceries
CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle 
INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 4, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

SELECT name 
FROM groceries;

SELECT name AS food_item, aisle AS aisle_number
FROM groceries;

SELECT * FROM groceries ORDER BY aisle;
SELECT * FROM groceries ORDER BY aisle DESC;

#Filtering data using WHERE clause
SELECT * FROM groceries WHERE aisle >6; -- Ethel --

SELECT AVG(quantity) FROM groceries;

ALTER TABLE groceries
CHANGE COLUMN aisle_no aisle integer;

SELECT aisle, SUM(quantity) AS "Total Quantity" FROM groceries 
GROUP BY 1;

# Challenge 2 Book Database
CREATE DATABASE Book_List;
USE Book_List;

/* Table with list of favourites */
CREATE TABLE favs (id INTEGER PRIMARY KEY, name TEXT, rating FLOAT);

# PLACING 30 FAVOURITES INTO 'fav'
INSERT INTO favs VALUES(1, 'The Count of Monte Cristo', 5.00);

INSERT INTO favs VALUES (2, 'Executive Orders', 5.00);
INSERT INTO favs VALUES (3, 'Patriot Games', 4.99);
INSERT INTO favs VALUES (4, 'The Green Sunset', 4.23);
INSERT INTO favs VALUES (5, 'The Client', 4.50);
INSERT INTO favs VALUES (6, 'Highlander', 3.90);
INSERT INTO favs VALUES (7, 'The Masquerade', 4.10);
INSERT INTO favs VALUES (8, 'The Bear and Dragon', 3.80);
INSERT INTO favs VALUES (9, 'Breaking Dawn 2', 4.50);
INSERT INTO favs VALUES (10, 'A Game of Thrones', 4.81);
INSERT INTO favs VALUES (11, 'A Clash of Kings', 4.94); 
INSERT INTO favs VALUES (12, 'A Storm of Swords', 4.35);
INSERT INTO favs VALUES (13, 'The Firm', 4.82);
INSERT INTO favs VALUES (14, 'Harry Potter and The Deathly Hallows 2', 4.95);
INSERT INTO favs VALUES (15, 'The Lord of the Rings', 4.89);
INSERT INTO favs VALUES (16, 'The Hobbit', 4.5);
INSERT INTO favs VALUES (17, '1984', 4.0);
INSERT INTO favs VALUES (18, 'Peter Pan', 4.10);
INSERT INTO favs VALUES (19, 'The King of Torts', 4.89);
INSERT INTO favs VALUES (20, 'A Painted House', 3.71);
INSERT INTO favs VALUES (21, 'Prisoners of Birth', 4.2);
INSERT INTO favs VALUES (22, 'Dune', 2.82);
INSERT INTO favs VALUES (23, 'The Sum of All Fears', 2.34);
INSERT INTO favs VALUES (24, 'The Hunt for Red October', 3.98);
INSERT INTO favs VALUES (25, 'The Sum of All Fears', 2.93);
INSERT INTO favs VALUES (26, 'The Cardinal of the Kremlin', 3.45);
INSERT INTO favs VALUES (27, 'Dracula', 2.76); 
INSERT INTO favs VALUES (28, 'In the Chest of a Woman', 5.00);
INSERT INTO favs VALUES (29, 'Grief Child', 1.99);
INSERT INTO favs VALUES (30, 'Great Expectations', 2.98);