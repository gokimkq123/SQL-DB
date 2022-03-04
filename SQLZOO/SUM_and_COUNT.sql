--1번

select sum(population) from world

--2번

select distinct continent from world

--3번

select sum(gdp) from world where continent = 'Africa';

--4번

select count(area) from world where area >= 1000000

--5번

select sum(population) from world where name in ('Estonia', 'Latvia', 'Lithuania')

--6번

select continent,count(*) from world group by continent

--7번

select continent,count(continent) from world where population >= 10000000 group by (continent) ;

--8번

select continent from world group by(continent) having sum(population) >= 100000000;
