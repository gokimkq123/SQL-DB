--모든 레코드 조회하기

select * from ANIMAL_INS

--역순 정렬하기

select NAME,DATETIME from ANIMAL_INS order by ANIMAL_ID DESC;

--아픈 동물 찾기

select ANIMAL_ID,NAME from ANIMAL_INS 
where INTAKE_CONDITION = 'Sick' order by ANIMAL_ID;

--어린 동물 찾기

select ANIMAL_ID,NAME from ANIMAL_INS where INTAKE_CONDITION != 'Aged'
order by ANIMAL_ID;

--동물의 아이디와 이름

select ANIMAL_ID,NAME from ANIMAL_INS order by ANIMAL_ID;


--여러 기준으로 정렬하기

select ANIMAL_ID,NAME,DATETIME from ANIMAL_INS order by NAME ASC,
DATETIME DESC;

--상위 n개 레코

select NAME from ANIMAL_INS order by DATETIME LIMIT 1;
