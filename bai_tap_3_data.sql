USE [QLSV]
GO
INSERT [dbo].[SinhVien] ([MaSV], [Hoten], [Ngaysinh]) VALUES (N'K1', N'Nguyễn Đức Việt', CAST(N'2004-08-06' AS Date))
INSERT [dbo].[SinhVien] ([MaSV], [Hoten], [Ngaysinh]) VALUES (N'K2', N'Nguyễn Trung Hiếu ', CAST(N'2004-11-18' AS Date))
INSERT [dbo].[SinhVien] ([MaSV], [Hoten], [Ngaysinh]) VALUES (N'K3', N'Nguyễn Văn Thứ ', CAST(N'2004-06-16' AS Date))
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [Ngaysinh], [maBM]) VALUES (N'gv1', N'thien', CAST(N'1999-08-12' AS Date), N'bm1')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [Ngaysinh], [maBM]) VALUES (N'gv2', N'dia', CAST(N'1989-09-09' AS Date), N'bm2')
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'm1', N'dien', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'm2', N'may', 2)
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'mahp1', N'lop1', N'2', N'm1', N'gv1')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'mahp2', N'lop2', N'2', N'm2', N'gv2')
GO
INSERT [dbo].[DKMH] ([maLopHP], [maSV], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'mahp1', N'K1', 8, 6, 1)
INSERT [dbo].[DKMH] ([maLopHP], [maSV], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'mahp2', N'K2', 7, 6, 2)
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, 1, 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, 2, 9)
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'lop1', N'kmt')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'lop2', N'ktd')
GO
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'lop1', N'gv1', N'2')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'lop2', N'gv2', N'2')
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'kh1', N'dientu')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'kh2', N'dien')
GO
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [maKhoa]) VALUES (N'bm1', N'mar', N'kh1')
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [maKhoa]) VALUES (N'bm2', N'triet', N'kh2')
GO
