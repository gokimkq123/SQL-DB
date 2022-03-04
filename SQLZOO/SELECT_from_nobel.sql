--1번

select * from nobel where yr = 1950;

--2번

select winner from nobel where (yr = 1962) && (subject = 'Literature');

--3번

select yr,subject from nobel where winner = 'Albert Einstein';

--4번

select winner from nobel where (subject = 'Peace') && (yr >= 2000);

--5번

select * from nobel where yr between 1980 and 1989 && subject = 'Literature';

--6번

select * from nobel where winner in('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama');

--7번

select winner from nobel where winner like 'John%';

--8번

select * from nobel where ((subject = 'Physics') && (yr = 1980)) || ((subject = 'Chemistry') && (yr = 1984));

--9번

select * from nobel where subject not in ('Chemistry','Medicine') && yr = 1980;

--10번

select * from nobel where (subject = 'Medicine' && yr < 1910) || (subject = 'Literature' && yr >= 2004);

--11번

select * from nobel where winner = 'PETER GRÜNBERG';

--12번

select * from nobel where winner = 'EUGENE O\'NEILL';

--13번

SELECT winner, yr, subject FROM nobel WHERE winner LIKE 'Sir%' ORDER BY yr DESC, winner ASC

--14번

select winner,subject from nobel where yr = 1984 order by subject in ('Chemistry','Physics'),subject,winner;
