--1
SELECT matchid, player FROM goal 
 WHERE teamid LIKE 'GER'

--2
SELECT id,stadium,team1,team2
  FROM game WHERE id LIKE '1012'

--3
SELECT player,teamid,stadium,mdate
FROM game JOIN goal ON(goal.matchid = game.id)
WHERE teamid LIKE 'GER'

--4
SELECT team1, team2, player
FROM game JOIN goal ON(game.id = goal.matchid)
WHERE player LIKE 'Mario%'

--5
SELECT player, teamid, coach,gtime
 FROM goal JOIN eteam on teamid = id
 WHERE gtime<=10

SELECT mdate, teamname
FROM eteam JOIN game on (team1 = eteam.id)
WHERE coach LIKE '%tos'

--6
SELECT player
FROM goal JOIN game on goal.matchid = game.id
WHERE stadium LIKE '%Warsaw'

--7
SELECT DISTINCT player
 FROM game JOIN goal ON matchid = id 
  WHERE ((team1='GER'AND team2 LIKE '%') OR (team1 LIKE'%' AND team2='GER'))  AND NOT teamid = 'GER'

--8
SELECT teamname, COUNT(player)
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname

--9
SELECT STADIUM, COUNT(player)
FROM goal JOIN game ON goal.matchid = game.id
GROUP BY stadium

--10
SELECT matchid,mdate,COUNT(player)
  FROM game JOIN goal ON game.id = goal.matchid
 WHERE((team1='POL'AND team2 LIKE '%') OR (team1 LIKE'%' AND team2='POL'))
GROUP BY matchid, mdate
ORDER BY matchid

--11
SELECT id, mdate, COUNT(*)
FROM goal JOIN game ON goal.matchid = game.id 
WHERE goal.teamid = 'GER'
GROUP BY id, mdate
ORDER by id


