
SELECT lower('MUGI RACHMAT') as lower_case from dual;

SELECT upper('mugi rachmat') as upper_case from dual;

SELECT concat('mugi', 'rachmat') as concat from dual;

SELECT substr('Mugi', 2, 1) as substr from dual;

SELECT length('mugi rachmat') as lenght from dual;

SELECT instr('Mugi', 'i') as instr from dual;

SELECT trim('m' from 'mugi') as trim1 from dual;
SELECT trim('i' from 'mugi') as trim2 from dual;

SELECT lpad('mugi', 10, '*') as lpad from dual;
SELECT rpad('mugi', 10, '*') as rpad from dual;

SELECT replace('saya semangat sekali', 's', 'c') as 'replace' from dual;

SELECT round(25.356) as round1 from dual;
SELECT round(25.356, 1) as round2 from dual;
SELECT round(25.356, 2) as round3 from dual;
SELECT round(25.356, 0) as round4 from dual;
SELECT round(25.356, -1) as round5 from dual;

SELECT mod(6, 3) as 'mod' from dual;





