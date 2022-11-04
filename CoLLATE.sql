--powtorzyc joiny


SELECT * 
FROM employees 
WHERE PESEL IS NULL


SELECT *, DATEDIFF(day, planned_exam_date, getdate()) as NumberOfDays
FROM students_modules WHERE DATEDIFF(day, planned_exam_date, getdate()) is not null
ORDER BY planned_exam_date DESC

select count(*)
from students_modules

SELECT student_id, surname AS family_name
FROM students
WHERE surname='Fisher'


--bez SARG
SELECT module_name, lecturer_id
FROM modules
WHERE lecturer_id=8 or COALESCE(lecturer_id,0) = 0


--z search arg
SELECT module_name, lecturer_id
FROM modules
WHERE lecturer_id=8 or lecturer_id IS NULL

--11.6
SELECT CONVERT(varchar(30), GETDATE(), 120)

--11.07 b
SELECT * 
FROM groups 
WHERE group_no NOT LIKE '%10%'

--11.07 e
SELECT * 
FROM groups 
WHERE group_no LIKE '%[12]'
--system  wybiera jeden z tych znakow w nawiasach []







--11.09
CREATE TABLE #tmp
(
id int primary key,
nazwisko varchar(30) collate polish_cs_as
)
INSERT INTO #tmp VALUES (1,'Kowalski');
INSERT INTO #tmp VALUES (2,'kowalski');
INSERT INTO #tmp VALUES (3,'KoWaLsKi');
INSERT INTO #tmp VALUES (4,'KOWALSKI');


--11.09 b
SELECT * FROM #tmp 
WHERE nazwisko COLLATE polish_ci_as LIKE '%kowalski%'

select * from #tmp
where nazwisko like '%kowalski%' collate polish_cs_as








--11.13 a
SELECT surname 
FROM employees
UNION
SELECT surname 
FROM students
ORDER BY SURNAME
--UNION ALL nie sortuje












