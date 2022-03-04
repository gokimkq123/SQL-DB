--이름이 없는 동물의 아이디

select ANIMAL_ID from ANIMAL_INS where NAME is NULL;

--이름이 있는 동물의 아이디

select ANIMAL_ID from ANIMAL_INS where NAME is not NULL;

--NULL 처리하기

select ANIMAL_TYPE,IFNULL(NAME,'No name') as NAME,
SEX_UPON_INTAKE from ANIMAL_INS
