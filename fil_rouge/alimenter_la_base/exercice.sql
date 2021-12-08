## entré de donnée  de coordonnées pour les fournisseurs dans la table live
INSERT INTO `Live` (`Live_address`, `Live_city`, `Live_zip_code`, `Live_country`)
VALUES ("532 Cursus. St.", "Chimbote", "21104", "Russian Federation"),
       ("304-1775 Feugiat Rd.", "Thanh Hóa", "640982", "Mexico"),
       ("6007 Tellus. Avenue", "Ijebu Ode", "1427", "Netherlands");

## entré de fournisseur qui sera relié au adresse dans live

INSERT INTO `suppliers` (`sup_firstname`, `sup_lastname`, `sup_type`, `Id_Live`)
VALUES ("Brenden", "Lynch", "professionnel", 1),
       ("Gretchen", "Steele", "professionnel", 2),
       ("Amela", "Allison", "particulier", 3);
