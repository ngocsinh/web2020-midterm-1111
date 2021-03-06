﻿CREATE DATABASE QUANLYSV
GO
USE QUANLYSV
GO
CREATE TABLE KHOA
(
	MAKHOA NVARCHAR(10) PRIMARY KEY,
	TENKHOA NVARCHAR(50),
	NAMTHANHLAP INT
)
GO
CREATE TABLE LOP
(
	MALOP NVARCHAR(10) PRIMARY KEY,
	TENLOP NVARCHAR(50),
	MAKHOA NVARCHAR(10),
	FOREIGN KEY (MAKHOA) REFERENCES KHOA (MAKHOA)
)
GO
CREATE TABLE SINHVIEN
(
	MASV NVARCHAR(10) PRIMARY KEY,
	HOVATEN NVARCHAR(50),
	NGAYSINH DATE,
	EMAIL NVARCHAR(50),
	MALOP NVARCHAR(10),
	FOREIGN KEY (MALOP) REFERENCES LOP (MALOP)
)
GO
CREATE TABLE MONHOC
(
	MAMH NVARCHAR(10) PRIMARY KEY,
	TENMON NVARCHAR(50),
	SOTC INT
)
GO
CREATE TABLE KETQUA
(
	MAKQ NVARCHAR(10) PRIMARY KEY,
	MAMH NVARCHAR(10),
	MASV NVARCHAR(10),
	DIEM INT,
	FOREIGN KEY (MAMH) REFERENCES MONHOC (MAMH),
	FOREIGN KEY (MASV) REFERENCES SINHVIEN (MASV)

)
GO

INSERT KHOA
VALUES(N'CNTT',N'CÔNG NGHỆ THÔNG TIN',N'1990')


INSERT LOP
VALUES(N'CNTTA',N'CÔNG NGHỆ THÔNG TIN A',N'CNTT')
INSERT LOP
VALUES(N'CNTTB',N'CÔNG NGHỆ THÔNG TIN B',N'CNTT')
INSERT LOP
VALUES(N'CNTTC',N'CÔNG NGHỆ THÔNG TIN C',N'CNTT')
INSERT LOP
VALUES(N'CNTTD',N'CÔNG NGHỆ THÔNG TIN D',N'CNTT')


INSERT SINHVIEN
VALUES(N'K44.01',N'NGUYEN VAN A',N'20000101',N'NGUYENVANA@GMAIL.COM',N'CNTTA')
INSERT SINHVIEN
VALUES(N'K44.02',N'NGUYEN VAN B',N'20000102',N'NGUYENVANB@GMAIL.COM',N'CNTTB')
INSERT SINHVIEN
VALUES(N'K44.03',N'NGUYEN VAN C',N'20000103',N'NGUYENVANC@GMAIL.COM',N'CNTTC')
INSERT SINHVIEN
VALUES(N'K44.04',N'NGUYEN VAN D',N'20000104',N'NGUYENVAND@GMAIL.COM',N'CNTTD')
INSERT SINHVIEN
VALUES(N'K44.05',N'NGUYEN VAN E',N'20000105',N'NGUYENVANE@GMAIL.COM',N'CNTTD')



INSERT MONHOC
VALUES(N'LTNC',N'LẬP TRÌNH NÂNG CAO',N'03')
INSERT MONHOC
VALUES(N'GT1',N'GIẢI TÍCH 1',N'02')
INSERT MONHOC
VALUES(N'AV1',N'TIẾNG ANH 1',N'03')
INSERT MONHOC
VALUES(N'PLDC',N'PHÁP LUẬT ĐẠI CƯƠNG',N'06')
INSERT MONHOC
VALUES(N'PTUDGD',N'PHÁT TRIỂN ỨNG DỤNG VÀ GIAO DIỆN',N'03')


INSERT KETQUA
VALUES(N'KQ01',N'LTNC',N'K44.01',N'9')
INSERT KETQUA
VALUES(N'KQ02',N'GT1',N'K44.02',N'8')
INSERT KETQUA
VALUES(N'KQ03',N'AV1',N'K44.03',N'7')
INSERT KETQUA
VALUES(N'KQ04',N'PLDC',N'K44.04',N'8')
INSERT KETQUA
VALUES(N'KQ05',N'PTUDGD',N'K44.05',N'6')




SELECT MAKHOA AS N'MÃ KHOA', TENKHOA AS N'TÊN KHOA', NAMTHANHLAP AS N'NĂM THÀNH LẬP' FROM KHOA 
SELECT MALOP AS N'MÃ LỚP', TENLOP AS N'TÊN LỚP', MAKHOA AS N'MÃ KHOA' FROM LOP
SELECT MASV AS N'MÃ SỐ SINH VIÊN', HOVATEN AS N'HỌ VÀ TÊN', NGAYSINH AS N'NGÀY SINH', EMAIL AS N'GMAIL', MALOP AS N'MÃ LỚP' FROM SINHVIEN
SELECT MAMH AS N'MÃ MÔN HỌC', TENMON AS N'TÊN MÔN HỌC', SOTC AS N'SỐ TÍNH CHỈ' FROM MONHOC
SELECT MAKQ AS N'MÃ KẾT QUẢ', MAMH AS N'MÃ MÔN HỌC', MASV AS N'MÃ SỐ SINH VIÊN', DIEM AS N'ĐIỂM' FROM KETQUA 