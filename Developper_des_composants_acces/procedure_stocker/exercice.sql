#exercice 1 création d'une procédure stockée sans paramètre
#Créez la procédure stockée Lst_fournis correspondant à la requête n°2 afficher le code des fournisseurs pour lesquels une commande a été passée.
#Exécutez la pour vérifier qu’elle fonctionne conformément à votre attente.
#Exécutez la commande SQL suivante pour obtenir des informations sur cette procédure stockée :

DELIMITER  $$
CREATE PROCEDURE List_fournis()
begin
    SELECT fournis.numfou AS Numero_fournisseur, produit.libart AS produit_vendu  FROM ligcom JOIN entcom ON entcom.numcom = ligcom.numcom JOIN fournis ON fournis.numfou = entcom.numfou JOIN produit ON produit.codart = ligcom.codart;
end $$
DELIMITER ;

#Exercice 2 : création d'une procédure stockée avec un paramètre en entrée
#Créer la procédure stockée Lst_Commandes, qui liste les commandes ayant un libellé particulier dans le champ obscom (cette requête sera construite à partir de la requête n°11).
DELIMITER  $$
CREATE PROCEDURE List_fournis()
begin
    SELECT fournis.numfou AS Numero_fournisseur, produit.libart AS produit_vendu  FROM ligcom JOIN entcom ON entcom.numcom = ligcom.numcom JOIN fournis ON fournis.numfou = entcom.numfou JOIN produit ON produit.codart = ligcom.codart;
end $$
DELIMITER ;

