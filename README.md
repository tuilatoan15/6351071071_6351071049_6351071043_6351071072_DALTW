Source code: https://drive.google.com/file/d/1NA1zeKnzDWWHHOJWWFMmSpKM5_igjswJ/view?usp=sharing
Vì file source code quá nặng, hiện tại tụi em ko thể up lên github được nên source code tụi em sẽ nén trong drive, mong thầy thông cảm ạ

Hướng Dẫn Sử Dụng Đồ Án

1. Tải Đồ Án Về Máy
Bước 1: Clone Repository

C1:  Mở terminal hoặc command prompt và chạy lệnh sau để tải mã nguồn về máy:
git clone
https://github.com/tuilatoan15/6351071071_6351071049_6351071043_6351071072_DALTW.git

C2: Tạo Forder mới -> Click chuột phải vào Forder -> Git Bash Here ->

- git init
- git clone https://github.com/tuilatoan15/6351071071_6351071049_6351071043_6351071072_DALTW.git

C3: Truy cập vào liên kết: https://github.com/tuilatoan15/6351071071_6351071049_6351071043_6351071072_DALTW.git -> [<Code>] -> [Download Zip] -> Giải nén

Bước 2: Truy cập vào thư mục dự án đã tạo hoặc giải nén ra trước đó

VD: 6351071071_6351071049_6351071043_6351071072_DALTW-main, WebShoeShop,...

2. Khởi Tạo và Kết Nối Cơ Sở Dữ Liệu

Bước 1: Cài đặt SQL Server (hoặc hệ quản trị cơ sở dữ liệu khác nếu dự án yêu cầu)
- Đảm bảo đã cài đặt SQL Server trên máy.
- Khởi chạy SQL Server Management Studio (SSMS).

Bước 2: Tạo cơ sở dữ liệu
- Mở file script SQL trong thư mục của dự án, tên file: “DataPushGithub.sql”.
- Nhấn F5 để chạy file script để tạo cấu trúc và dữ liệu mẫu cho cơ sở dữ liệu:

Bước 3: Cập nhật chuỗi kết nối (connection string)
- Mở file cấu hình của dự án “web.config”và cập nhật thông tin kết nối đến cơ sở dữ liệu ở dòng:

connectionString="Data Source=LAPTOP-F15;Initial Catalog=WebShopShoe;Integrated Security=True;TrustServerCertificate=True"

Thành của bạn bằng cách: Trên thanh công cụ của Visual studio code 
-> Tool 
-> Connect to Database... 
-> Ở mục Server Name: Chọn tên server của bạn 
-> Ở mục Encrypt: tích chọn Trust Server Certificate 
-> Select to enter a database name: Chọn WebShopShoe 
-> Test Connection 
-> Nếu success 
-> Click Advanced...: Bạn sẽ thấy chuỗi kết nối: (VD: Data Source=LAPTOP-F15\HUUTOAN;Initial Catalog=WebShopShoe;Integrated Security=True;Trust Server Certificate=True) 
-> Copy chuỗi kết nối thay vào connectionString
 
3. Chạy Ứng Dụng
Bước 1: Cài đặt môi trường
- Đảm bảo đã cài đặt các công cụ cần thiết:
  - .NET SDK (hoặc phiên bản framework mà đồ án yêu cầu).
  - IDE như Visual Studio hoặc Visual Studio Code.

Bước 2: Khởi chạy ứng dụng
- Mở dự án bằng IDE.
- Chạy lệnh build và start ứng dụng:
- Hoặc nhấn nút "Run" trong IDE.

4. Đăng Nhập Vào Hệ Thống

Tài khoản Admin:
- Tên đăng nhập: admin99
- Mật khẩu: Anhnhoem15@

Tài khoản User:
- Tên đăng nhập: user1
- Mật khẩu: Anhnhoem15@
