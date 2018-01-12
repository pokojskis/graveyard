--Zapytania agregujace
-- COUNT() - Ktory grabaz ma najwiecej grobow?
SELECT gravedigger.name, gravedigger.surname, COUNT(grave.gravedigger_id) as "no. of graves" 
FROM grave LEFT OUTER JOIN gravedigger ON (grave.gravedigger_id=gravedigger.id) 
GROUP BY grave.gravedigger_id 
ORDER BY COUNT(grave.gravedigger_id) DESC LIMIT 3;

-- SUM() - Ile kosztuja wszystkie miejsca razem wziete?
SELECT SUM(price) AS "Sum of all" FROM purchase;


-- AVG() - Jaka jest srednia cena miejsca?
SELECT AVG(price) AS "Avg of all" FROM purchase;

-- MIN() - Ktory grob jest najstarszy?
SELECT grave_id, purchase_date AS "Purchase date" 
FROM purchase ORDER BY 
purchase_date LIMIT 1;


-- GROUP_CONCAT() - Kto zostal pochowany kiedy i przez kogo?


