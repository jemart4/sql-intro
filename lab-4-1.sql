-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935


--SELECT stats.hits FROM stats

--INNER JOIN players ON 
--WHERE first_name = "Barry" AND last_name ="Bonds"


SELECT SUM(stats.hits) FROM players 
INNER JOIN stats ON players.id = stats.player_id
WHERE first_name = "Barry" AND last_name = "Bonds"

;