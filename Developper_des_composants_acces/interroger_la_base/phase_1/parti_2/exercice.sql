# 1. Calculer le nombre d'employés de chaque titre.
SELECT titre, COUNT(*) FROM employe GROUP BY titre;

#2. Calculer la moyenne des salaires et leur somme, par région.
SELECT AVG(salaire) as `Moyenne des salaires`, sum(salaire) as somme, dept.nom as `nom région` FROM employe JOIN dept on employe.nodep = employe.nodep GROUP by dept.nom

#3. Afficher les numéros des départements ayant au moins 3 employés.


#4. Afficher les lettres qui sont l'initiale d'au moins trois employés.


#5. Rechercher le salaire maximum et le salaire minimum parmi tous les salariés et l'écart entre les deux.


#6. Rechercher le nombre de titres différents.


#7. Pour chaque titre, compter le nombre d'employés possédant ce titre.


#8. Pour chaque nom de département, afficher le nom du département et le nombre d'employés.


#9. Rechercher les titres et la moyenne des salaires par titre dont la moyenne est supérieure à la moyenne des salaires des Représentants.


#10.Rechercher le nombre de salaires renseignés et le nombre de taux de commission renseignés.