--1번

SELECT matchid,player FROM goal WHERE teamid = 'GER'

--2번

SELECT id,stadium,team1,team2 FROM game where id = 1012

--3번

select player,teamid,stadium,mdate from game join goal on (id = matchid) where teamid = 'GER'

--4번

select team1,team2,player from game inner join goal on id = matchid where player like 'Mario%';

--5번

select player,teamid,coach,gtime from goal inner join eteam on teamid = id where gtime <= 10;

--6번

select mdate,teamname from game inner join eteam as x on team1 = x.id where coach = 'Fernando Santos'

--7번

select player from goal inner join game on matchid = id where stadium = 'National Stadium, Warsaw'

--8번

select distinct player from goal inner join game on matchid = id where (team1 = 'GER'|| team2 = 'GER') && teamid != 'GER';

--9번

SELECT teamname, count(teamname) from eteam inner join goal on id = teamid group by (teamname);

--10번

select stadium,count(stadium) from game inner join goal on id = matchid group by (stadium)

--11번

select matchid,mdate,count(matchid) from game inner join goal on matchid = id 
where (team1 = 'POL' or team2 = 'POL') group by mdate,matchid order by matchid

--12번

select matchid,mdate,count(matchid) from game inner join goal on id = matchid
where (teamid = 'GER') group by mdate,matchid order by id;

--13번

SELECT mdate, team1,
SUM(CASE WHEN teamid = team1 THEN 1 ELSE 0 END) score1,
team2,
SUM(CASE WHEN teamid = team2 THEN 1 ELSE 0 END) score2
FROM game  JOIN goal
ON matchid = id
GROUP BY mdate, matchid, team1, team2
