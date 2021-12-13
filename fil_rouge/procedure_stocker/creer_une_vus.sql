#Créez une vue correspondant à la jointure Produits - Fournisseurs
CREATE VIEW  product_fournis
AS
CREATE VIEW  product_fournis
AS
SELECT pro_id, pro_name, suppliers.sup_id FROM `products` join suppliers ON products.sup_id=suppliers.sup_id;