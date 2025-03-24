# Bài tập 02 của sv: K225480106075 - Nguyễn Đức Việt - Môn Hệ quản trị csdl
## DEADLINE: 23H59 NGÀY 25/03/2025
ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.
BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
- YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
## Tạo database, mô tả các tham số (nếu có) trong quá trình
1. click chuột phải vào database chọn new database
![image](https://github.com/user-attachments/assets/b2f1b0ac-424d-452c-b8c9-a60b318c6e38)
Trong đó :
  + Autogrowth/maxsize : kích thước tăng trưởng của tệp/kích thước tối đa.
  + Initial Size (MB): Dung lượng khởi tạo ban đầu của tệp (8 MB).
  + Path: Đường dẫn lưu trữ file vật lý của cơ sở dữ liệu.
  + PRIMARY: Filegroup chính chứa file dữ liệu chính.
  + Not Applicable: Không áp dụng cho file log.
2. Tạo bảng
![image](https://github.com/user-attachments/assets/55f16bfc-9533-4b2e-bfed-1fdc4c0e0f67)
  Điền thông tin bảng:
  + Column name : tên cột
  + Data type : kiểu dữ liệu
  + Allow Null : Nếu chọn thì có nghĩa là giá trị có thể null
![image](https://github.com/user-attachments/assets/bf6026c6-3551-4700-aa08-903946382f6a)
  Chọn khóa chính
![image](https://github.com/user-attachments/assets/b6dd88b3-b310-4cf5-93b7-9e567fa110c2)
  Ctrl+S lưu bảng
![image](https://github.com/user-attachments/assets/1216081e-296e-45d8-afad-712ad218ce01)
