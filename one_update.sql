-- Update
-- Nastepuje przepisanie wlasciciela grobu.

-- Kto jest aktualnym wlascicielem grobu nr 2?
SELECT owner.id, owner.name, owner.surname, purchase.grave_id FROM owner INNER JOIN purchase ON (owner.id=purchase.owner_id) WHERE grave_id=2;
--+----+------+---------+----------+
--| id | name | surname | grave_id |
--+----+------+---------+----------+
--| 18 | Jaap | Stam    |        2 |
--+----+------+---------+----------+

-- Przepisujemy na innego czlonka rodziny.
UPDATE owner SET name="Anna" WHERE id=18;


-- Udalo sie przepisac.
SELECT owner.id, owner.name, owner.surname, purchase.grave_id FROM owner INNER JOIN purchase ON (owner.id=purchase.owner_id) WHERE grave_id=2;
--+----+------+---------+----------+
--| id | name | surname | grave_id |
--+----+------+---------+----------+
--| 18 | Anna | Stam    |        2 |
--+----+------+---------+----------+

