# hequantricsdl
  1.khái niệm hệ quản trị: là một phần mềm hay một hệ thống được thiết kế để quản lí một cơ sở dữ liệu hỗ trợ khả năng lưu trữ, sửa chữa, xóa và tìm kiếm thông tin trong cơ sở dữ liệu    
  2.các chức năng chính: + cung cấp môi trường tạo lập CSDL; + cung cấp môi trường cập nhật và khai thác dữ liệu; + cung cấp công cụ kiểm soát, điều khiển và truy cập vào CSDL  
  3.kiến trúc chung: giao diện lập trình; bộ phận an toàn và bảo mật; xử lý truy xuất đồng thời; khôi phục sau sự cố; tối ưu hóa câu truy vấn; tổ chức lưu trữ dữ liệu  
  4.ưu điểm: + quản lý được dữ liệu dư thừa; + đảm bảo tính nhất quán cho dữ liệu; + tạo khả năng chia sẻ dữ liệu nhiều hơn; + cải tiến tính toàn vẹn cho dữ liệu  
  5.nhược điểm: + HQT tốt thì khá phức tạp và tốn dung lượng bộ nhớ.  
  6.SQL server là một HQTCSDL quan hệ sử dụng câu lệnh SQL để trao đổi dữ liệu giữa client và SQL server.  
  7.các đặc điểm của SQL server: + cho phép quản trị một hệ lớn lên đến vài tega byte, có tốc độ xử lý đáp ứng về thời gian; + cho phép các người dùng có thể truy vấn và quản trị trong cùng 1 thời điểm lên đến vài chục nghìn user; + có hệ thông phân quyền bảo mật tốt; + cho phép lập trình kết nối với nhiều ngôn ngữ lập trình.  
  8.cấu trúc lưu trữ vật lí của SQL server: các file nhị phân: + primary data file; + secondary file; +log file  
  9.SQL là: là công cụ tổ chức, quản lý truy xuất dữ liệu trong hệ quản trị. để thực hiện chức năng SQL dùng ngôn ngữ T-SQL. chia làm 3 nhóm.  
  9.1 nhóm định nghĩa dữ liệu câu lệnh: create (tạo đối tượng dữ liệu); alter (sửa các đối tượng); drop (xóa đối tượng)  
  9.2 nhóm thao tác dữ liệu câu lệnh: thay đổi dữ liệu bảng (insert; delete; update) và không thay đổi (select)  
  9.3 nhóm điều khiển dữ liêu: cấp phát quyền (grant) và thu hồi quyền (revoke)  
  10.khởi tạo 1 database cú pháp: create database <tên>  
  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/a85aac3d-c574-44a5-a028-8b94a53a659c)  
  11.sử dụng database cú pháp: use <tên>  
  12.đổi tên database cú pháp: alter database <tên cũ> modify name = <tên mới>  
  13.xóa database cú pháp: drop database <tên>  
  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/201fa2d4-d949-420d-b132-57f59d2815d1)  
  14.tạo bảng cú pháp: create table <tên>  
                       (tên cột KDL ràng buộc (có hoặc không),  
                        ...  
                        )  
  14.1 xóa bảng cú pháp: drop table <tên>  
  15.sửa cấu trúc bảng cú pháp: alter table <tên bảng> (mỗi cú pháp sửa được viết liền sau)  
  15.1 thêm cột cú pháp: add tên cột KDL ràng buộc (có hoặc không) 
  15.2 xóa cột cú pháp: drop column tên cột chú ý: muốn xóa cột phải xóa ràng buộc trước  
  15.3 sửa kiểu dữ liệu cột cú pháp: alter column tên cột KDL mới  
  đến đây không cần thêm alter table <tên bảng> phía trước  
  15.4 đổi tên cột cú pháp: SP_RENAME 'tên bảng.tên cột cũ', 'tên cột mới', 'COLUMN'  
  15.5 đổi tên bảng mới cú pháp: SP_RENAMe tên bảng cũ, tên bảng mới  
  15.6 xem dữ liệu các bản ghi trong bảng cú pháp: SELECT * FROM tên bảng  
  chú ý: cột là các trường thuộc tính; dòng là các bản ghi  
  16. chèn dữ liệu vào bảng cú pháp: INSERT INTO tên bảng (cot1, cot2, ...)  
                                    VALUES (gt1, gt2, ...)  
      chú ý: với các gt có KDL text đặt trong ''; nvachar(KDL giới hạn kí tự) đặt trong N''; date đặt 'năm-tháng-ngày'  
  17. cập nhật dữ liệu trên bảng cú pháp: UPDATE tên bảng set cot = gt, ...  
                                          WHERE cot = gtri(tại vị trí thay đổi)  
  18. xóa bản ghi trong bảng (sẽ trả về NULL) cú pháp: DELETE FROM tên bảng  
                                                       WHERE cot=gtri (điều kiên để xác định bản ghi bị xóa)  
  19. ràng buộc toàn vẹn là các quy tắc trong một cơ sở dữ liệu nhằm kiểm tra tính đúng đắn và hợp lệ của dữ liệu trước khi lưu trữ.    
  19.1 có 2 loại ràng buộc là ràng buộc mức cột-chỉ áp dụng cho cột và ràng buộc mức bảng-có thể áp dụng cho nhiều cột  
  19.2 cú pháp tạo ràng buộc mức cột: ở bên trên trong phần tạo bảng  
  19.3 cú pháp tạo ràng buộc mức bảng: constraint tên ràng buộc loại ràng buộc (danhsachsot) thêm vào ngay sau khi tạo các cột trong bảng trước dấu )  
  19.4 cú pháp khai báo tên cho ràng buộc: tên cột KDL constraint tên ràng buộc loại ràng buộc  
  19.5 cú pháp thêm ràng buộc: alter table tên bảng add constraint tên ràng buộc loại ràng buộc (danhsachcot)  
  19.6 ràng buộc default: khi nhập dữ liệu cột đó không được cung cấp giá trị thì giá trị mặc định được dùng. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/c04ab15d-e9af-4c90-ae74-1a3700bbea51)  

  
