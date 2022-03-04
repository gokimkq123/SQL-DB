--없어진 기록 찾기

select x.ANIMAL_ID,x.NAME from ANIMAL_OUTS as x
left join ANIMAL_INS as y on x.ANIMAL_ID = y.ANIMAL_ID
where y.ANIMAL_ID is NULL;

--있었는데요 없었습니다

select x.ANIMAL_ID,x.NAME from ANIMAL_OUTS as x
left join ANIMAL_INS as y on x.ANIMAL_ID = y.ANIMAL_ID
where x.DATETIME < y.DATETIME
order by y.DATETIME;

--오랜 기간 보호한 동물(1)

select INS.NAME,INS.DATETIME from ANIMAL_INS as INS 
left join ANIMAL_OUTS as OUTS on INS.ANIMAL_ID = OUTS.ANIMAL_ID
where OUTS.DATETIME is NULL
order by INS.DATETIME
limit 3;
