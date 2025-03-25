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
### I.Tạo Database và bảngbảng
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
  Bảng lớp
![image](https://github.com/user-attachments/assets/aac84fd7-7b0f-433a-8222-9687c9f1e1aa)
  Bảng GVCN
![image](https://github.com/user-attachments/assets/e91879f8-091e-4e24-ab52-12c541808e15)
  Lop SV
![image](https://github.com/user-attachments/assets/747f5b7f-64d5-4beb-b66a-94b80940c1e5)
  Bảng Giáo viên
![image](https://github.com/user-attachments/assets/cc4e09e0-3060-45ee-8a1d-ae1fee720a30)
  Bảng bộ môn
![image](https://github.com/user-attachments/assets/8fc398e3-aae9-4141-9026-13f37ed6af24)
  Bảng Khoa
![image](https://github.com/user-attachments/assets/7e6b4dc0-1c67-40b8-aa62-2500db0be20a)
  Môn học
![image](https://github.com/user-attachments/assets/f8a706b8-4ca9-4a59-91e9-88c45ae57419)
  Lớp HP
![image](https://github.com/user-attachments/assets/24272087-f38b-4523-93a1-11e9bed630d9)
  DKMH
![image](https://github.com/user-attachments/assets/2b0d744d-7827-451a-aa22-f0dd51f8a2b9)
### II. Mối quan hệ và điều kiệnkiện
  3.Mối quan hệ
      Trên thanh công cụ của cửa sổ Design, nhấp chuột phải vào vùng trống và chọn Relationships...
Một cửa sổ Foreign Key Relationships sẽ hiện lên.
Nhấp vào nút Add để thêm một mối quan hệ.
Ở phần Tables and Columns Specifications, nhấp vào dấu ... (dấu ba chấm) ở bên phải.
![image](https://github.com/user-attachments/assets/a7a9c413-719a-4683-bb76-599569ad54f0)
![image](https://github.com/user-attachments/assets/cbbfe830-a7f1-4dd0-a638-6ae0bf98137b)
![image](https://github.com/user-attachments/assets/af5b344d-d18c-4bd8-9a50-b4c6ad62a803)
  Phần INSERT and UPDATE Specification trong Foreign Key Relationships bao gồm các quy tắc về việc xử lý dữ liệu khi có thao tác DELETE hoặc UPDATE trên bảng cha (Primary Key Table). Cụ thể, trong ảnh của bạn có hai tùy chọn:
1. Delete Rule:
Khi xóa dữ liệu trên bảng cha (Primary Key Table), sẽ có các lựa chọn sau:
  - No Action: Không làm gì cả. Nếu dữ liệu của bảng con (Foreign Key Table) còn phụ thuộc vào bảng cha thì sẽ báo lỗi, không xóa được.
  - Cascade: Khi xóa dữ liệu trên bảng cha thì dữ liệu liên quan trên bảng con cũng bị xóa.
  - Set Null: Khi xóa dữ liệu trên bảng cha thì các cột khóa ngoại ở bảng con sẽ được set thành NULL (nếu cột đó cho phép NULL).
  - Set Default: Khi xóa dữ liệu trên bảng cha thì các cột khóa ngoại ở bảng con sẽ được set thành giá trị mặc định (nếu có đặt default).
2. Update Rule:
Khi cập nhật (sửa) dữ liệu của khóa chính trên bảng cha (Primary Key Table), sẽ có các lựa chọn sau:
  - No Action: Không làm gì cả. Nếu dữ liệu bảng con vẫn còn phụ thuộc vào dữ liệu bảng cha thì sẽ báo lỗi, không cho phép cập nhật.
  - Cascade: Khi cập nhật dữ liệu của khóa chính trên bảng cha thì các cột khóa ngoại liên quan ở bảng con cũng được cập nhật tương ứng.
  - Set Null: Khi cập nhật dữ liệu của khóa chính trên bảng cha thì khóa ngoại liên quan ở bảng con sẽ thành NULL (nếu cột đó cho phép NULL).
  - Set Default: Khi cập nhật dữ liệu khóa chính trên bảng cha thì khóa ngoại liên quan ở bảng con sẽ được set thành giá trị mặc định (nếu có đặt default).
  Bảng LopSV
![image](https://github.com/user-attachments/assets/a335c92e-706c-4bc9-b4da-266f45bbe2f2)
![image](https://github.com/user-attachments/assets/be7ba9ad-3974-4563-890e-2f37ead5018b)
 Bảng Bomon
![image](https://github.com/user-attachments/assets/5934755f-a146-4149-a118-46d4f8225e3d)
  Bảng LopHP
![image](https://github.com/user-attachments/assets/a4f4c2fe-d7fb-48e2-af86-d59ab21ea5d7)
![image](https://github.com/user-attachments/assets/24a9be8e-9112-4145-89eb-acd3dae52324)
  Bảng MaLopHP
![image](https://github.com/user-attachments/assets/08dbac0a-208c-4bbf-9c38-92818d4c77ff)
![image](https://github.com/user-attachments/assets/302f02ab-e8de-42df-aefb-316b2efca962)




