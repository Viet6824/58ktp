![image](https://github.com/user-attachments/assets/567622d9-901b-45ad-b990-dc31424f2c48)BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 30/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
## Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
![image](https://github.com/user-attachments/assets/b67d3199-8cf1-4766-8daa-dd1d0b3f1b70)
![image](https://github.com/user-attachments/assets/33a5f4e0-2721-41cb-9a84-9b4787c8d322)
## Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
![image](https://github.com/user-attachments/assets/7014ed68-37ce-47f1-b5ca-5837e380b5df)
![image](https://github.com/user-attachments/assets/756f1131-81d9-41ff-bcb5-2065d1f7fb3c)
![image](https://github.com/user-attachments/assets/3b6f0385-c33a-4f96-8402-c59830c1127a)
![image](https://github.com/user-attachments/assets/1f6094d5-0a43-4206-9cdc-30ae55a00075)
![image](https://github.com/user-attachments/assets/ad175a12-e76e-4ef4-9a69-2c50a35552ca)
![image](https://github.com/user-attachments/assets/4227142f-5b1a-4090-8dab-66a1a8c810be)
![image](https://github.com/user-attachments/assets/e0e3fa90-cab9-41d8-98a5-dcf786147b4d)
![image](https://github.com/user-attachments/assets/de812a32-6a29-4aef-9ac9-02de1ed341ea)
## Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
![image](https://github.com/user-attachments/assets/172af34c-e5ea-448b-9008-4931201d4f56)
## Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
![image](https://github.com/user-attachments/assets/e606e4c2-8544-4bc1-a6d6-461b8e0e273a)




