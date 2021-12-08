## entré de donnée  de coordonnées pour les fournisseurs dans la table live

INSERT INTO `Live` (`Live_address`, `Live_city`, `Live_zip_code`, `Live_country`)
VALUES ("532 Cursus. St.", "Chimbote", "21104", "Russian Federation"),
       ("304-1775 Feugiat Rd.", "Thanh Hóa", "640982", "Mexico"),
       ("6007 Tellus. Avenue", "Ijebu Ode", "1427", "Netherlands"),
       ("6008 rar. Avenue", "Ijebu Ode", "1997", "Netherlands"),
       ("5007 dsfdg. Avenue", "Ijebu Ode", "1427", "Netherlands"),
       ("3007 abcd. Avenue", "Ijebu Ode", "8427", "Netherlands");

## entré de fournisseur qui sera relié au adresse dans live

INSERT INTO `suppliers` (`sup_firstname`, `sup_lastname`, `sup_type`, `Id_Live`)
VALUES ("Brenden", "Lynch", "professionnel", 1),
       ("Gretchen", "Steele", "professionnel", 2),
       ("Amela", "Allison", "particulier", 3);


## entré de département genre comptabilité, marketing, etc

INSERT INTO `departments` (`dep_name`)
VALUES ('Comptabilité');
INSERT INTO `departments` (`dep_name`)
VALUES ('Ressources Humaines');
INSERT INTO `departments` (`dep_name`)
VALUES ('Logistique');
INSERT INTO `departments` (`dep_name`)
VALUES ('Maintenance');
INSERT INTO `departments` (`dep_name`)
VALUES ('Marketing');
INSERT INTO `departments` (`dep_name`)
VALUES ('Direction');


## entré du post genre commercial, manager, Comptable etc

INSERT INTO `posts` (`pos_name`)
VALUES ('commercial');
INSERT INTO `posts` (`pos_name`)
VALUES ('manager');
INSERT INTO `posts` (`pos_name`)
VALUES ('Comptable');

## entré des employées

INSERT INTO `employees` (`emp_id`, `emp_firstname`, `emp_lastname`, `emp_tel`, `Id_Live`, `dep_id`, `pos_id`)
VALUES (NULL, 'françois-régis', 'caumartin', '0663534369', '8', '6', '1');

## entré des catégories

INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('Guit/Bass', NULL);
INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('Batteries', NULL);
INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('Clavier', NULL);
INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('Studio', NULL);
INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('Sono', NULL);
INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('Eclairage', NULL);
INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('DJ', NULL);
INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('Cases', NULL);
INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('Accessoires', NULL);

##insertion de sous catégorie de Guit/bass
INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('Guitares Electriques', 1);
INSERT INTO `categories` ( `cat_name`, `cat_id_parent`) VALUES ('Guitares Classiques', 1);

