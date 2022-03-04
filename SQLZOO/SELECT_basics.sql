--1번

SELECT name,length(name) FROM world WHERE length(name)=5 and region='Europe'

--2번

SELECT name, population from world where name in ('Sweden','Norway','Denmark');

--3번

SELECT name, area FROM world WHERE area BETWEEN 200000 AND 250000


