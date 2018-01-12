--Insert
-- Nowy grob z przypisaniem grabaza ktory ma najmniej roboty.


SELECT * FROM grave;
--+----+----------+-------------+----------------+
--| id | location | purchase_id | gravedigger_id |
--+----+----------+-------------+----------------+
--|  1 | 0,0      |           1 |              1 |
--|  2 | 0,1      |        NULL |              3 |
--|  3 | 0,2      |           8 |              5 |
--|  4 | 0,3      |           6 |              7 |
--|  5 | 0,4      |           2 |              9 |
--|  7 | 1,0      |        NULL |             13 |
--| 10 | 1,3      |           4 |             19 |
--| 11 | 1,4      |          18 |              2 |
--| 12 | 1,5      |        NULL |              4 |
--| 13 | 2,0      |        NULL |              6 |
--| 14 | 2,1      |          19 |              8 |
--| 15 | 2,2      |           5 |             10 |
--| 18 | 2,5      |           9 |             16 |
--| 19 | 3,0      |           7 |             18 |
--| 20 | 3,1      |           3 |             20 |
--+----+----------+-------------+----------------+

-- 
INSERT INTO grave VALUES 
(21, "3,3", NULL, (SELECT gravedigger.id
FROM grave as grave_read LEFT OUTER JOIN gravedigger ON (grave_read.gravedigger_id=gravedigger.id) 
GROUP BY grave_read.gravedigger_id 
ORDER BY COUNT(grave_read.gravedigger_id) ASC LIMIT 1));

