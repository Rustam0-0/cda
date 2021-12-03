#Mysql : les déclencheurs, Papyrus

DELIMITER $$

CREATE TRIGGER after_products_update
    AFTER UPDATE
    ON produit
    FOR EACH ROW
BEGIN
    IF NEW.stkale < NEW.stkphy THEN
        INSERT INTO ARTICLES_A_COMMANDER (QTE,CODART) VALUES ((NEW.stkale - NEW.stkphy),NEW.CODART);
    END IF;
END;
$$
DELIMITER ;