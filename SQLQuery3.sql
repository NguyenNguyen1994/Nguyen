--L?ch h?c c?a sinh vi�n
select Student.Name as 'T�n', Discipline.Name as 'M�n h?c', Teacher.Name as 'Gi�o vi�n'  
from Student, Schedule, Assignment_Discipline, Discipline, Teacher
where Student.ID = Schedule.StudentID and Schedule.ADID = Assignment_Discipline.ADID 
and Assignment_Discipline.DisciplineID = Discipline.ID and Assignment_Discipline.TeacherID  = Teacher.ID

--L?ch d?y c?a gi�o vi�n
select Teacher.Name as 'T�n', Discipline.Name as 'T�n m�n h?c', Class.ID as 'L?p', Schedule.ADID as 'M� l?p h?c'
from Teacher, Assignment_Discipline, Discipline, Schedule, Student, Class
where Teacher.ID = Assignment_Discipline.TeacherID and Assignment_Discipline.DisciplineID = Discipline.ID
and Assignment_Discipline.ADID = Schedule.ADID and Schedule.StudentID = Student.ID
and Student.ClassID = Class.ID
order by Class.ID

--