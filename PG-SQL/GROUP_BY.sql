--고양이와 개는 몇 마리 있을까

select ANIMAL_TYPE,count(ANIMAL_TYPE) as count from ANIMAL_INS 
where ANIMAL_TYPE in('Cat','Dog') group by ANIMAL_TYPE
order by ANIMAL_TYPE;

--동명 동물 수 찾기

select NAME,COUNT(NAME) from ANIMAL_INS group by NAME having count(NAME) >= 2
order by NAME;


--입양 시각 구하기(1)

select hour(DATETIME) as HOUR,count(hour(DATETIME)) from ANIMAL_OUTS
where (hour(DATETIME) >= 9 && hour(DATETIME) <= 19)
group by hour(DATETIME) order by hour(DATETIME)
;
