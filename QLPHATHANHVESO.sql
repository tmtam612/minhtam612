USE MASTER
drop database QLVESO
create database QLVESO

use QLVESO

create table DaiLy
(
	MaDaiLy varchar(20) primary key,
	TenDaiLy nvarchar(50) not null,
	DiaChi nvarchar(100) not null,
	SDT varchar(15) not null,
	Flag bit
)


create table LoaiVeso
(
	MaLoaiVeSo varchar(20) primary key,
	Tinh nvarchar(20),
	GiaVe decimal (19,3) DEFAULT 10000, 
	/* NgaySo date, */
	Flag bit
)


create table SoLuongDK 
(
	ID varchar(20) primary key,
	MaDaiLy varchar(20),
	NgayDK date,
	SoLuongDK int,
	foreign key (MaDaiLy) references DaiLy(MaDaiLy),
	Flag bit
)

select * from SoLuongDK


create table PhatHanh
(
	ID int identity ,
	MaDaiLy varchar(20) ,
	MaLoaiVeSo varchar(20) ,
	SoLuong int,
	NgayNhan date,
	SLBan int,
	DoanhThuDPH decimal(19, 3), /*doanhthuDPH = slban * GiaVe*/
	HoaHong decimal(2, 0), /*vi du: min:10, max: 50 */
	TienThanhToan decimal(19,3), /* (100-HoaHong)/100* DoanhThuDPH */
	Flag bit,
	primary key (ID,MaDaiLy, MaLoaiVeSo),
	foreign key (MaDaiLy) references DaiLy(MaDaiLy),
	foreign key (MaLoaiVeSo) references LoaiVeso(MaLoaiVeSo)
)


create table Giai (
	MaGiai varchar(20) primary key,
	TenGiai nvarchar(30),
	SoTienNhan decimal(19, 3),
	Flag bit
)


create table KetQuaSoXo
(
	ID int primary key,  
	MaLoaiVeSo varchar(20),
	MaGiai varchar(20),
	NgaySo date,
	SoTrung varchar(10),
	Flag bit,

	foreign key (MaLoaiVeSo) references LoaiVeSo(MaLoaiVeSo),
	foreign key (MaGiai) references Giai(MaGiai)
)


create table PhieuThu 
(
	MaPhieuThu varchar(20) primary key,
	MaDaiLy varchar(20),
	NgayNop date,
	SoTienNop decimal(19,3),
	Flag bit
	foreign key (MaDaiLy) references DaiLy(MaDaiLy)
)


create table PhieuChi
(
	MaPhieuChi varchar(20) primary key,
	Ngay date,
	NoiDung nvarchar(200),
	SoTien decimal (19, 3)
)



/*

DaiLi 1
LoaiVeSo 1
Giai 1

SoLuongDK 2
PhatHanh 2

KetQuaSoXo 3 
PhieuThu 3
PhieuChi 3

1. Long
2. Tan
3. Hieu

*/

/*NHẬP DỮ LIỆU*/

insert into DaiLy values ('DL01', N'Đại lý vé số Phương Trang', N'93 Phan Đình Phùng, Phường 17, Quận Phú Nhuận, TP.Hồ Chí Minh', '098 877 7444',1)
insert into DaiLy values ('DL02', N'Đại lý vé số Đổi Đời', N'155 Vạn Kiếp, Phường 3, Quận Bình Thạnh, TP.Hồ Chí Minh', '090 364 2129', 1)
insert into DaiLy values ('DL03', N'Đại lý vé số Chiến Thắng', N'107 Quang Trung, Phường 10, Quận Gò Vấp, TP.Hồ Chí Minh', N'090 783 2316', 1)
insert into DaiLy values ('DL04', N'Đại lý vé số Bình An', N'92 Bà Huyện Thanh Quan, Phường 9, Quận 3, TP.Hồ Chí Minh', '096 772 9729', 1)
insert into DaiLy values ('DL05', N'Đại lý vé số Phát Tài', N'329 Phan Đình Phùng, Phường 1, Quận Phú Nhuận, TP.Hồ Chí Minh', '093 412 8268', 1)
insert into DaiLy values ('DL06', N'Đại lý vé số Hòa Phát', N'14 Xô Viết Nghệ Tĩnh, Phường 19, Quận Bình Thạnh, TP.Hồ Chí Minh', '090 398 0280', 1)

insert into LoaiVeso values ('AG67-T03', N'An Giang', 10000, 1)
insert into LoaiVeso values ('BL31-T07', N'Bạc Liêu', 10000, 1)
insert into LoaiVeso values ('BTRE34-T08', N'Bến Tre', 10000,  1)
insert into LoaiVeso values ('BD53-T12', N'Bình Dương', 10000, 1)
insert into LoaiVeso values ('BPH93-T04', N'Bình Phước', 10000, 1)
insert into LoaiVeso values ('BTH86-T10', N'Bình Thuận', 10000, 1)
insert into LoaiVeso values ('CM69-T13', N'Cà Mau', 10000, 1)
insert into LoaiVeso values ('CT65-T14', N'Cần Thơ', 10000, 1)
insert into LoaiVeso values ('DL49-T15', N'Đà Lạt', 10000, 1)
insert into LoaiVeso values ('DNAI22-T05', N'Đồng Nai', 10000, 1)
insert into LoaiVeso values ('DT25-T06', N'Đồng Tháp', 10000, 1)
insert into LoaiVeso values ('HG95-T16', N'Hậu Giang', 10000, 1)
insert into LoaiVeso values ('KG68-T17', N'Kiên Giang', 10000, 1)
insert into LoaiVeso values ('LA01-T01', N'Long An', 10000, 1)
insert into LoaiVeso values ('STR45-T11', N'Sóc Trăng', 10000, 1)
insert into LoaiVeso values ('TN39-T09', N'Tây Ninh', 10000, 1)
insert into LoaiVeso values ('TG08-T02', N'Tiền Giang', 10000, 1)
insert into LoaiVeso values ('TP32-T08', N'Thành Phố HCM', 10000, 1)
insert into LoaiVeso values ('TV84-T18', N'Trà Vinh', 10000, 1)
insert into LoaiVeso values ('VL64-T19', N'Vĩnh Long', 10000, 1)
insert into LoaiVeso values ('VT72-T20', N'Vũng Tàu', 10000, 1)


insert into Giai values ('GI01', N'Giải nhất', 30000000, 1)
insert into Giai values ('GI02', N'Giải nhì', 15000000, 1)
insert into Giai values ('GI03', N'Giải ba', 10000000, 1)
insert into Giai values ('GI04', N'Giải tư', 3000000, 1)
insert into Giai values ('GI05', N'Giải năm', 1000000, 1)
insert into Giai values ('GI06', N'Giải sáu', 400000, 1)
insert into Giai values ('GI07', N'Giải bảy', 200000, 1)
insert into Giai values ('GI08', N'Giải tám', 100000, 1)
insert into Giai values ('GIDB', N'Giải đặc biệt', 2000000000, 1)
insert into Giai values ('GIPDB', N'Giải phụ đặc biệt', 50000000, 1)
insert into Giai values ('GIKK', N'Giải Khuyến khích', 6000000, 1)


insert into SoLuongDK values ('DK001', 'DL01', '02/23/2018', 100, 1)
insert into SoLuongDK values ('DK002', 'DL02', '03/22/2018', 150, 1)
insert into SoLuongDK values ('DK003', 'DL05', '02/27/2018', 150, 1)
insert into SoLuongDK values ('DK004', 'DL04', '05/26/2018', 150, 1)
insert into SoLuongDK values ('DK005', 'DL05', '06/27/2018', 200, 1)
insert into SoLuongDK values ('DK006', 'DL06', '07/29/2018', 300, 1)
insert into SoLuongDK values ('DK007', 'DL02', '08/23/2018', 200, 1)

/*so luong giao tiep theo = sldk * ti le ban 3 dot gan nhat*/
insert into PhatHanh values ('DL01', 'TN39-T09', 100, '2018/10/04', 80, 800000, 10, 720000, 1)
insert into PhatHanh values ('DL01', 'AG67-T03', 100, '2018/10/04', 90, 900000, 10, 810000, 1)
insert into PhatHanh values ('DL01', 'BTH86-T10', 100, '2018/10/04', 100, 1000000, 10, 900000, 1)
insert into PhatHanh values ('DL02', 'TN39-T09', 150, '2018/10/04', 130, 1300000, 10, 1170000, 1)
insert into PhatHanh values ('DL02', 'AG67-T03', 150, '2018/10/04', 140, 1400000, 10, 1260000, 1)
insert into PhatHanh values ('DL05', 'TN39-T09', 200, '2018/10/04', 190, 1900000, 10, 1710000, 1)
insert into PhatHanh values ('DL05', 'BTH86-T10', 200, '2018/10/04', 180, 1800000, 10, 1620000, 1)
insert into PhatHanh values ('DL06', 'AG67-T03', 300, '2018/10/04', 250, 2500000, 10, 2250000, 1)
insert into PhatHanh values ('DL01', 'VL64-T19', 90, '2018/10/05', 80, 800000, 10, 720000, 1)
insert into PhatHanh values ('DL01', 'BD53-T12', 90, '2018/10/05', 70, 700000, 10, 630000, 1)
insert into PhatHanh values ('DL02', 'VL64-T19', 135, '2018/10/05', 135, 1350000, 10, 1215000, 1)
insert into PhatHanh values ('DL02', 'BD53-T12', 135, '2018/10/05', 130, 1300000, 10, 1170000, 1)
insert into PhatHanh values ('DL06', 'BD53-T12', 250, '2018/10/05', 240, 2400000, 10, 2160000, 1)
insert into PhatHanh values ('DL02', 'TP32-T08', 145, '2018/10/06', 145, 1450000, 10, 1305000, 1)
insert into PhatHanh values ('DL02', 'LA01-T01', 145, '2018/10/06', 140, 1400000, 10, 1260000, 1)

insert into KetQuaSoXo values ('1', 'TP32-T08', 'GI01','2018/10/06','77282',1)
insert into KetQuaSoXo values ('2', 'TP32-T08', 'GI02','2018/10/06','75104',1)
insert into KetQuaSoXo values ('3', 'TP32-T08', 'GI03','2018/10/06','42663',1)
insert into KetQuaSoXo values ('4', 'TP32-T08', 'GI03','2018/10/06','30772',1)
insert into KetQuaSoXo values ('5', 'TP32-T08', 'GI04','2018/10/06','35641',1)
insert into KetQuaSoXo values ('6', 'TP32-T08', 'GI04','2018/10/06','15591',1)
insert into KetQuaSoXo values ('7', 'TP32-T08', 'GI04','2018/10/06','03619',1)
insert into KetQuaSoXo values ('8', 'TP32-T08', 'GI04','2018/10/06','30705',1)
insert into KetQuaSoXo values ('9', 'TP32-T08', 'GI04','2018/10/06','99993',1)
insert into KetQuaSoXo values ('10', 'TP32-T08', 'GI04','2018/10/06','36204',1)
insert into KetQuaSoXo values ('11', 'TP32-T08', 'GI04','2018/10/06','74553',1)
insert into KetQuaSoXo values ('12', 'TP32-T08', 'GI05','2018/10/06','9840',1)
insert into KetQuaSoXo values ('13', 'TP32-T08', 'GI06','2018/10/06','7076',1)
insert into KetQuaSoXo values ('14', 'TP32-T08', 'GI06','2018/10/06','5152',1)
insert into KetQuaSoXo values ('15', 'TP32-T08', 'GI06','2018/10/06','2296',1)
insert into KetQuaSoXo values ('16', 'TP32-T08', 'GI07','2018/10/06','279',1)
insert into KetQuaSoXo values ('17', 'TP32-T08', 'GI08','2018/10/06','38',1)
insert into KetQuaSoXo values ('18', 'TP32-T08', 'GIDB','2018/10/06','075811',1)

insert into PhieuThu values ('PTH0001', 'DL02', '2018/10/05',1000000,1)
insert into PhieuThu values ('PTH0002', 'DL05', '2018/10/05',500000,1)
insert into PhieuThu values ('PTH0003', 'DL01', '2018/10/06',1000000,1)
insert into PhieuThu values ('PTH0004', 'DL02', '2018/10/06',1000000,1)
insert into PhieuThu values ('PTH0006', 'DL06', '2018/10/06',500000,1)

insert into PhieuChi values ('PCH0001', '2018/10/05',N'Trúng giải đặc biệt',2000000000)
insert into PhieuChi values ('PCH0002', '2018/10/06',N'Trúng 8 giải tám',8000000)

------------TINH SO LUONG GIAO CUA DOT PHAT HANH KHI THEM -------------------------
CREATE PROCEDURE SOLUONGGIAO 
@MADAILY VARCHAR(10),
@MALOAIVESO VARCHAR(20),
@SLG int,
@NgayNhan date,
@SLBan int,
@DoanhThuDPH decimal(19, 3), /*doanhthu = slban * 10000*/
@HoaHong decimal(2, 0), /*vi du: min:10, max: 50 */
@TienThanhToan decimal(19,3), /* (100-HoaHong)/100* DoanhThu */
@Flag bit
AS
BEGIN
	-- S? lu?ng dang ký m?i nh?t
	DECLARE @SLDK INT = ISNULL((SELECT TOP 1 SoLuongDK FROM SoLuongDK WHERE MaDaiLy = @MADAILY ORDER BY NgayDK DESC), 0)

	-- S? lu?ng d?t phát hành vé cho d?i lý, chua có d?t phát hành nào thì d?t = 1 d? tránh l?i divide by zero, l?n hon 3 thì ch? l?y 3
	DECLARE @Count INT = (SELECT COUNT(*) FROM PhatHanh WHERE MaDaiLy = @MADAILY)
	IF @Count = 0 SET @Count = 1 ELSE IF @Count > 3 SET @Count = 3

	SELECT @SLG = (ISNULL(SUM(SLBan * 1.0 / SoLuong), 0) / @Count) * @SLDK FROM (
		SELECT TOP 3 * FROM PhatHanh
		WHERE MaDaiLy = @MADAILY ORDER BY NgayNhan DESC
	)q 
	INSERT INTO PhatHanh (MaDaiLy, MaLoaiVeSo, SoLuong ,NgayNhan ,SLBan ,DoanhThuDPH ,HoaHong ,TienThanhToan, Flag)
	values( @MADAILY, @MALOAIVESO, @SLG, @NgayNhan, @SLBan, @DoanhThuDPH, @HoaHong, @TienThanhToan, @Flag) 
END

drop procedure SOLUONGGIAO
exec SOLUONGGIAO 'DL05', 'DL49-T15', '', '2018-10-10', '', '0', '10', '0', '1'

---------------------UPDATE SO TIEN PHAI TRA KHI UPDATE SLBAN --------------------------------------------------------
CREATE TRIGGER UPDATE_SLB_TPT
ON PhatHanh
FOR UPDATE
AS
	DECLARE @SLB int, @TienThanhToan decimal(19,3), @TiLeHH float, @id int 
	IF EXISTS (SELECT * FROM inserted, PhatHanh 
		WHERE inserted.ID	= PhatHanh.ID
		AND PhatHanh.SLBan > 0 )
		BEGIN
--------SET id------------------------------------------------------------------------------
		SET @id = (SELECT INSERTED.ID FROM inserted, PhatHanh
			WHERE inserted.ID = PhatHanh.ID and inserted.MaDaiLy = PhatHanh.MaDaiLy AND inserted.MaLoaiVeSo	= PhatHanh.MaLoaiVeSo)
--------SET So Luong Ve Ban Duoc ---------------------------------------------------------------- 
		SET @SLB = (SELECT Inserted.SLBan FROM inserted, PhatHanh
			WHERE inserted.ID = PhatHanh.ID and inserted.MaDaiLy = PhatHanh.MaDaiLy AND inserted.MaLoaiVeSo	= PhatHanh.MaLoaiVeSo)
--------SET Ti Le Hoa Hong		----------------------------------------------------------
		SET @TiLeHH = 1 - ((SELECT HoaHong FROM Inserted)*0.01)
--------SET Tien Thanh Toan----------------------------------------------------------------------
		SET @TienThanhToan = (SELECT GiaVe FROM inserted, LoaiVeso 
			WHERE inserted.MaLoaiVeSo = LoaiVeso.MaLoaiVeSo) * @SLB * @TiLeHH 
--------Update Tien Thanh Toan Trong Table PhatHang---------------------------------------------		
		update PhatHanh set TienThanhToan = @TienThanhToan where PhatHanh.ID = @id 	
		update PhatHanh set DoanhThuDPH = ((SELECT GiaVe FROM inserted, LoaiVeso 
			WHERE inserted.MaLoaiVeSo = LoaiVeso.MaLoaiVeSo) * @SLB) where PhatHanh.ID = @id 	
		END;

update PhatHanh set SLBan = 10 where PhatHanh.ID = 17 
drop trigger UPDATE_SLB_TPT

---------------------------RANG BUOC KHI THEM MOI NEU SLBAN=0 THI SO TIEN PHAI TRA =0--------------------------
CREATE TRIGGER RB_INSERT_SLB_TPT
ON PhatHanh
FOR INSERT
AS
	DECLARE @ID INT
	IF EXISTS (SELECT * FROM inserted, PhatHanh WHERE inserted.ID = PhatHanh.ID 
	AND PhatHanh.SLBan = 0 and PhatHanh.TienThanhToan >0)
	BEGIN
		SET @ID = (SELECT INSERTED.ID FROM inserted)
		UPDATE PhatHanh set TienThanhToan = 0  WHERE PhatHanh.ID = @ID	
	END

DROP TRIGGER RB_INSERT_SLB_TPT

---------------------------RANG BUOC KHI UPDATE NEU SLBAN=0 THI SO TIEN PHAI TRA =0--------------------------
CREATE TRIGGER RB_UPDATE_SLB_TPT
ON PhatHanh
FOR UPDATE
AS
	DECLARE @ID INT
	IF EXISTS (SELECT * FROM inserted, PhatHanh WHERE inserted.ID = PhatHanh.ID 
	AND PhatHanh.SLBan = 0 and PhatHanh.TienThanhToan > 0)
	BEGIN
		SET @ID = (SELECT ID FROM inserted)
		UPDATE PhatHanh set TienThanhToan = 0  WHERE PhatHanh.ID = @ID	
	END

DROP TRIGGER RB_UPDATE_SLB_TPT
---------------- TINH SUM CONG NO --------------------------------------------------
CREATE PROCEDURE CONGNO 
@MADAILY VARCHAR(10),
@NGAY DATE
AS
BEGIN
	DECLARE @CN DECIMAL (19,3) , @SUM_STPT DECIMAL (19,3), @SUM_STDT DECIMAL (19,3)
	SELECT @SUM_STPT = SUM(TienThanhToan) FROM PhatHanh WHERE MaDaiLy = @MADAILY AND NgayNhan < = @NGAY AND SLBan > 0
	SELECT @SUM_STDT = SUM(SoTienNop) FROM PhieuThu WHERE MaDaiLy = @MADAILY and NgayNop < = @NGAY 
	SET @CN = @SUM_STPT - @SUM_STDT
	PRINT @CN
END

exec CONGNO 'DL06', '2018-10-11'
------------------------
CREATE PROCEDURE DOANHTHU
AS
BEGIN
	declare @SUM_THU DECIMAL(19,3), @SUM_CHI DECIMAL(19,3), @NGAY DATE, @DOANHTHUTHANG DECIMAL(19,3)
	SET @NGAY = (SELECT GETDATE())
	SELECT @SUM_THU = SUM(SoTienNop) FROM PhieuThu WHERE MONTH(NgayNop) = MONTH(@NGAY)
	SELECT @SUM_CHI = SUM(SoTien) FROM PhieuChi WHERE MONTH(Ngay) = MONTH(@NGAY)  
	SET @DOANHTHUTHANG = @SUM_THU - @SUM_CHI
	PRINT @DOANHTHUTHANG
END

drop procedure DOANHTHU
exec DOANHTHU