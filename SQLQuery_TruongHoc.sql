--Lịch các lớp
select Lop.name as 'Lớp', MonHoc.name as 'Môn',GiaoVien.name as 'Giáo viên phụ trách'
from Lop, ThoiKhoaBieu, GiaoVien, MonHoc
where Lop.id = ThoiKhoaBieu.lopID and GiaoVien.id = ThoiKhoaBieu.gvID and MonHoc.id = ThoiKhoaBieu.mhID
order by Lop.name

--Lịch dạy của 1 giáo viên (vd: giáo viên Đạo có id = dao)
select Lop.name as 'Lớp', MonHoc.name as 'Môn'
from Lop, ThoiKhoaBieu, GiaoVien, MonHoc
where Lop.id = ThoiKhoaBieu.lopID and GiaoVien.id = ThoiKhoaBieu.gvID and MonHoc.id = ThoiKhoaBieu.mhID and GiaoVien.id='dao'
order by Lop.name

--Lịch học của 1 sinh viên (vd: giáo viên Nguyên có id = nguyen)
select  MonHoc.name as 'Môn học', Lop.name as 'Lớp', GiaoVien.name as 'Giáo viên phụ trách'
from SinhVien, ThamGia, Lop, ThoiKhoaBieu, GiaoVien, MonHoc
where SinhVien.id = ThamGia.svID and Lop.id = ThamGia.lopID and Lop.id = ThoiKhoaBieu.lopID and GiaoVien.id = ThoiKhoaBieu.gvID
	and MonHoc.id = ThoiKhoaBieu.mhID and SinhVien.id='nguyen'
order by MonHoc.name

--Môn học có lớp nào dạy, ai phụ trách
select Lop.name as 'Lớp', GiaoVien.name as 'Giáo viên phụ trách'
from Lop, ThoiKhoaBieu, GiaoVien, MonHoc
where Lop.id = ThoiKhoaBieu.lopID and GiaoVien.id = ThoiKhoaBieu.gvID and MonHoc.id = ThoiKhoaBieu.mhID and MonHoc.id = 'android'
order by Lop.name