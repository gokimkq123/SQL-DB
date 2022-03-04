--1번

select name,continent,population from world 

--2번

select name from world where population >= 200000000;

--3번

select name,(gdp/population) from world where population >= 200000000;

--4번

select name,(population/1000000) from world where name = 'South America';

--5번

select name,population from world where name in ('France','Germany','Italy');

--6번

select name from world where name like '%United%';

--7번

select name,population,area from world where (population > 250000000) || (area > 3000000);

--8번

select name,population,area from world where (area > 3000000 && population <= 250000000) || (area <= 3000000 && population > 250000000);

--9번

select name,round(population/1000000,2),round(gdp/1000000000,2) from world where continent = 'South America';

--10번

select name,round(gdp/population,-3) from world where gdp >= 1000000000000;

--11번

SELECT name, capital FROM world WHERE length(name) = length(capital);

--12번

select name,capital from world where left(name,1) = left(capital,1) && name != capital;

--13번

select name from world where name like '%a%' and name like '%e%' and name like '%i%' and name like '%o%' and name like '%u%' and name not like '% %';
