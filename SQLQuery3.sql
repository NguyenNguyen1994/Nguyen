--L?ch h?c c?a sinh viên
select Student.Name as 'Tên', Discipline.Name as 'Môn h?c', Teacher.Name as 'Giáo viên'  
from Student, Schedule, Assignment_Discipline, Discipline, Teacher
where Student.ID = Schedule.StudentID and Schedule.ADID = Assignment_Discipline.ADID 
and Assignment_Discipline.DisciplineID = Discipline.ID and Assignment_Discipline.TeacherID  = Teacher.ID

--L?ch d?y c?a giáo viên
select Teacher.Name as 'Tên', Discipline.Name as 'Tên môn h?c', Class.ID as 'L?p', Schedule.ADID as 'Mã l?p h?c'
from Teacher, Assignment_Discipline, Discipline, Schedule, Student, Class
where Teacher.ID = Assignment_Discipline.TeacherID and Assignment_Discipline.DisciplineID = Discipline.ID
and Assignment_Discipline.ADID = Schedule.ADID and Schedule.StudentID = Student.ID
and Student.ClassID = Class.ID
order by Class.ID

--