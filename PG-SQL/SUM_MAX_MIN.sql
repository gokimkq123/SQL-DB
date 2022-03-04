--최댓값 구하기

select DATETIME as 시간 from ANIMAL_INS order by DATETIME DESC LIMIT 1;

--최솟값 구하기

select min(DATETIME) as '시간' from ANIMAL_INS;

--동물 수 구하기

select count(ANIMAL_ID) from ANIMAL_INS;

--중복 제거하기

select count(distinct(NAME)) from ANIMAL_INS where NAME is not NULL;
