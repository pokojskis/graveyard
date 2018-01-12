-- Podwojny join
-- Chcemy wiedziec wyswietlic dane wlasciciela, daty zakupu i dane nieboszczyka.
-- Polaczenie wlasciciela (owner) z osoba pochowana (deadman) przez zakup (purchase)

SELECT owner.name as owner_name, 
	owner.surname as owner_surname, 
	purchase.purchase_date as buried, 
	deadman.name as deadman_name, 
	deadman.surname as deadman_surname 
FROM owner 
INNER JOIN purchase ON (owner.id=purchase.owner_id) 
INNER JOIN deadman ON (purchase.grave_id=deadman.grave_id);

