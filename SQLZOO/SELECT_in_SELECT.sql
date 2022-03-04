--1번

select name from world where population > (select population from world where name = 'Russia');

--2번

select name from world where continent = 'Europe' && gdp/population > (select gdp/population from world where name ='United Kingdom');

--3번

select name,continent from world where continent in (select continent from world where name in('Argentina','Australia')) order by name;

--4번

select name,population from world 
where (population > (select population from world where name = 'Canada')) && (population < (select population from world where name = 'Poland'))

--5번

select name,concat(round((population/(select population from world where name = 'Germany') * 100),0),'%') from world where continent = 'Europe';

--6번

select name from world where (gdp > all(select gdp from world where continent = 'Europe' && gdp > 0));

--7번

select continent,name,area from world as x where (area >= all(select area from world as y where y.continent = x.continent));

--8번

select continent,name from world as x where name <= all(select name from world as y where x.continent = y.continent);

--9번

select name,continent,population from world as x where 25000000 >= all(select population from world as y where y.continent = x.continent);

--10번

select name,continent from world as x where population >= all(select population*3 from world as y where x.name != y.name && x.continent = y.continent);
