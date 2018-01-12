-- Delete
-- Chcemy zrobic miejsce na smietnik, wiec usuwamy najstarszy grob.

-- Kto jest w tym grobie?
SELECT deadman.name as deadname, 
	deadman.surname as deadsurname, 
	deadman.grave_id as grave_id, 
	purchase.purchase_date as buried 
FROM deadman 
INNER JOIN purchase ON (deadman.grave_id=purchase.grave_id) 
ORDER BY buried ASC 
LIMIT 1;

-- Usuwamy grob.
DELETE grave FROM grave 
INNER JOIN purchase ON (grave.id=purchase.grave_id) 
WHERE purchase.purchase_date=
(
SELECT MIN(purchase.purchase_date) FROM purchase
);

-- Usuniety grob nie powinen miec daty zakupu.
SELECT grave.id as grave, purchase.purchase_date 
FROM grave 
LEFT JOIN purchase ON (grave.id=purchase.grave_id);
