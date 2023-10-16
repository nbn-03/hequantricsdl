# hequantricsdl
  1.khái niệm hệ quản trị: là một phần mềm hay một hệ thống được thiết kế để quản lí một cơ sở dữ liệu hỗ trợ khả năng lưu trữ, sửa chữa, xóa và tìm kiếm thông tin trong cơ sở dữ liệu    
  2.các chức năng chính: + cung cấp môi trường tạo lập CSDL; + cung cấp môi trường cập nhật và khai thác dữ liệu; + cung cấp công cụ kiểm soát, điều khiển và truy cập vào CSDL  
  3.kiến trúc chung: giao diện lập trình; bộ phận an toàn và bảo mật; xử lý truy xuất đồng thời; khôi phục sau sự cố; tối ưu hóa câu truy vấn; tổ chức lưu trữ dữ liệu  
  4.ưu điểm: + quản lý được dữ liệu dư thừa; + đảm bảo tính nhất quán cho dữ liệu; + tạo khả năng chia sẻ dữ liệu nhiều hơn; + cải tiến tính toàn vẹn cho dữ liệu  
  5.nhược điểm: + HQT tốt thì khá phức tạp và tốn dung lượng bộ nhớ.  
  6.SQL server là một HQTCSDL quan hệ sử dụng câu lệnh SQL để trao đổi dữ liệu giữa client và SQL server.  
  7.các đặc điểm của SQL server: + cho phép quản trị một hệ lớn lên đến vài tega byte, có tốc độ xử lý đáp ứng về thời gian; + cho phép các người dùng có thể truy vấn và quản trị trong cùng 1 thời điểm lên đến vài chục nghìn user; + có hệ thông phân quyền bảo mật tốt; + cho phép lập trình kết nối với nhiều ngôn ngữ lập trình.  
  chú ý: các cơ sở dữ liệu hệ thống của SQL server: master; tempdb; model; msdb  
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
  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/7881286a-ae8b-47e1-a27c-59a0d4bdd51c)  
  14.1 xóa bảng cú pháp: drop table <tên>  
  15.sửa cấu trúc bảng cú pháp: alter table <tên bảng> (mỗi cú pháp sửa được viết liền sau)  
  15.1 thêm cột cú pháp: add tên cột KDL ràng buộc (có hoặc không) 
  15.2 xóa cột cú pháp: drop column tên cột chú ý: muốn xóa cột phải xóa ràng buộc trước  
  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/207fa27b-839a-4a28-a79c-0c2465cfe586)  
  15.3 sửa kiểu dữ liệu cột cú pháp: alter column tên cột KDL mới  
  đến đây không cần thêm alter table <tên bảng> phía trước  
  15.4 đổi tên cột cú pháp: SP_RENAME 'tên bảng.tên cột cũ', 'tên cột mới', 'COLUMN'  
  15.5 đổi tên bảng mới cú pháp: SP_RENAMe tên bảng cũ, tên bảng mới  
  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/cb5d3448-d922-49e5-a0c6-9a8fd2e88043)  
  15.6 xem dữ liệu các bản ghi trong bảng cú pháp: SELECT * FROM tên bảng  
  chú ý: cột là các trường thuộc tính; dòng là các bản ghi  
  16. chèn dữ liệu vào bảng cú pháp: INSERT INTO tên bảng (cot1, cot2, ...)  
                                    VALUES (gt1, gt2, ...)  
      chú ý: với các gt có KDL text đặt trong ''; nvachar(KDL giới hạn kí tự) đặt trong N''; date đặt 'năm-tháng-ngày'  
  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/04c25c78-907b-4446-90a8-503b0a48a74d)  
  17. cập nhật dữ liệu trên bảng cú pháp: UPDATE tên bảng set cot = gt, ...  
                                          WHERE cot = gtri(tại vị trí thay đổi)  
  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/8f14096f-6abe-4cbb-a0f1-c0706d2a48fd)  
  18. xóa bản ghi trong bảng (sẽ trả về NULL) cú pháp: DELETE FROM tên bảng  
                                                       WHERE cot=gtri (điều kiên để xác định bản ghi bị xóa)  
  19. ràng buộc toàn vẹn là các quy tắc trong một cơ sở dữ liệu nhằm kiểm tra tính đúng đắn và hợp lệ của dữ liệu trước khi lưu trữ.  
  19.1 có 2 loại ràng buộc là ràng buộc mức cột-chỉ áp dụng cho cột và ràng buộc mức bảng-có thể áp dụng cho nhiều cột  
  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/ecb0c04e-5484-4d1c-8e60-9fb1c0ef8434)  
  19.2 cú pháp tạo ràng buộc mức cột: ở bên trên trong phần tạo bảng  
  19.3 cú pháp tạo ràng buộc mức bảng: constraint tên ràng buộc loại ràng buộc (danhsachsot). thêm vào ngay sau khi tạo các cột trong bảng trước dấu )  
  19.4 cú pháp khai báo tên cho ràng buộc: tên cột KDL constraint tên ràng buộc loại ràng buộc  
  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/b0d14e68-4a4f-48c2-a909-98af044dba8a)  
  19.5 cú pháp thêm ràng buộc: alter table tên bảng add constraint tên ràng buộc loại ràng buộc (danhsachcot)  
  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/4839ed20-1189-40d4-919a-47c93b6bb3ab)  
  19.6 ràng buộc default: khi nhập dữ liệu cột đó không được cung cấp giá trị thì giá trị mặc định được dùng. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/c04ab15d-e9af-4c90-ae74-1a3700bbea51)  
 ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/f6207f39-f616-42c3-ae7e-176ab8cec7e5)  
  19.7 ràng buộc check: là ràng buộc kiểm tra, yêu cầu phải thảo mãn một biểu thức logic. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/62606db0-439f-4f93-96ef-a6c569606ac5)  
![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/a253918b-03d4-4d19-a5fb-8c7d111f1538)  
  19.8 ràng buộc NOT NULL: là khi nhập dữ kiệu giá trị của cột đấy không được bỏ trống. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/546027e4-2c52-4dc9-ad13-65759e2c63fa)  
  19.9 ràng buộc UNIQUE: yêu cầu các giá trị trong cột hoặc tập hợp cột phải khác nhau, có thể có giá trị NULL nhưng chỉ có một lần. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/4decb52e-9fd2-44a6-a777-c1d439839609)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/1f10c2ff-0111-4999-9ea0-20ef5302841f)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/1afd746e-8778-443a-b6f6-17206b4f6630)  
  19.10 ràng buộc primary key: là cột hoặc các cột thỏa mãn các giá trị phải khác nhau và không cón giá trị not null. mỗi bảng chỉ cho phép tối đa một khóa chính và mỗi bảng cần có 1 khóa chính. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/e067dd78-9ae3-4b73-9a98-ddb261f19ee7)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/42363db0-7680-4914-b3d0-5a48d3e83a0f)  
![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/690ddca5-ad2b-41e9-bf7a-4c4bdec77706)  
  19.11 ràng buộc khóa ngoại: được sử dụng để nối các bảng với nhau (còn được gọi là khóa tham chiếu). Ràng buộc khóa ngoại đảm bảo rằng giá trị trong một cột của bảng con phải tương ứng với giá trị trong cột của bảng cha. điều kiện để tạo khóa ngoại: cột bên bảng cha cũng phải có tại bảng con và tại bảng cha thì cột đó là primary key. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/414eedd6-c65d-415e-8595-5da76358d7a0)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/0e35cada-2569-4a50-8c25-07b4fc062f90)  
  chú ý: không để xóa dữ liệu hay bwangr nếu còn tồn tại khóa ngoại vì nó đã nối 2 bẳng với nhau.  
  19.12 xóa ràng buộc cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/e9ce8c92-d999-44f5-b231-59391e8e4e7e)  chú ý: không thể xóa dàng buộc không có tên  
  19.13 thuộc tính identity: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/aa8a86ee-26d7-45dd-8017-aee44cb309e4)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/b0ed4927-8d73-4b73-96be-d852cf4a71e4)  
  20. truy vấn (select) đơn giản(trên một bảng)  
  20.1 truy vấn 1 cột trong bảng cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/733917d5-b658-4ccb-87fd-4dbe79be70e7)  
  chú ý nếu là select * from: sẽ là truy vấn hết các cột nếu chỉ truy vấn 1 số cột thì gõ tên cột thay vì dấu *   
  20.2 liên kết các cột dữ liệu trong truy vấn kết quả cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/07157c61-852f-4dfb-bf01-bd223eea0965)  
  20.3 lấy n hàng đầu trong bảng dữ liệu cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/fe5b7b5c-02c8-4552-b88a-c677d4fe9a4c)  
  20.4 lấy n% đầu tiên trong bảng cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/6069f3e6-e08f-4ad3-8017-f4288f831881)  
  20.5 loại bỏ dữ liệu trùng lắp cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/aeb68605-f7b8-428a-8cf3-c6e51124c433)  
  20.6 sử dụng mệnh đề where cú pháp: select * from tên bảng where điều kiện. ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/1c5d4400-84d5-451f-93cf-dfaccd396607)  
  20.7 các toán tử so sánh, logic: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/83047169-1fe9-48b9-a11b-27e2e68fe0a4)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/5640a1ad-1a0d-4ad6-b2e6-103e3499abdf)  
  20.8 lấy một khoảng cú pháp: select * from tên bảng where tên cột between giá trị một and giá trị 2. ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/31740942-7f91-40f4-a77f-1fec20284084)  
  20.9 tìm kiếm gần đúng với cú pháp: select * from tên bảng where tên cột like dữ liệu mẫu. chú ý dữ liệu mẫu ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/48b47299-e078-4ac7-b68b-bda5449931c9)  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/303e3692-9832-41dc-8e04-7178fb8adff3)  
  20.10 mệnh đề ORDER BY để sắp xếp dữ liệu theo thứ tự (ASC tăng/ DESC giảm) trên một hoặc nhiều cột. cú pháp: select * from tên bảng ORDER BY tên cột ASC/DESC. ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/9f8de280-e119-4973-88d1-8caf360b0bf7)  
  20.11 mệnh đề group by: được sử dụng kết hợp với select để sắp xếp dữ liệu đồng nhất vào 1 nhóm. ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/1730cd4e-a84e-42dc-82c6-f70498092e9b)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/58e52c92-c75a-4fb2-af79-40ec442bd6e7)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/86a8745b-fe66-43cf-8587-67adcfe77b7b)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/1f78b110-466a-4d05-a7a8-aafc035d4a3b)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/6364d40d-81e4-494a-a164-913d7a57fc33)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/37b75e8e-0333-43bb-a0d9-f531d8a83f23)  
  20.11.1 having được thêm vào vì đối với một số hàm where không thể học được. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/fcd5fcab-b740-4c6c-8ff8-335bfc64bc13)  giống nhau và khác nhau của where và having  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/be398bcd-a851-4b4d-b338-2e1e3dafd43b)  
  21.truy vấn dữ liệu nâng cao(trên nhiều bảng)  
  21.1 kết nối sử dụng mệnh đề WHERE. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/ed2fd093-0c2c-4c5a-95fc-366111487219)
  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/c8de66f5-5981-4aef-a9e8-67720b162871)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/33a82db5-e02a-4bd9-abc9-af2cde781d31)  
  Chú ý: sự khác biệt khác Where và Join là: Where là chỉ lọc ra dữ liệu từ điều kiện còn Join là kết hợp dữ liệu từ hai hoặc nhiều bảng dựa trên cột giống nhau.  
  21.2.1 INNER JOIN cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/173aeedf-8ff7-4c46-b8cf-aba38f8c9a31)  Ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/7f60cf51-b139-4ca8-ae87-e88d0b2ff246)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/5ff150b7-1a7e-4541-abdd-dadb54a9f51d)  
   21.2.2 LEFT JOIN cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/1fd02898-3701-4cdb-a7b2-3d19d1080365)  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/e78289ae-b9b5-4646-b28a-05a6394126b2)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/a5a4e15b-1712-443e-8240-74efc8528115)  
  21.2.3 RIGHT JOIN cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/cf020f9a-296e-48a8-bfda-f89dd4301fd1) ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/fbda0991-d6e6-43b2-a7b7-e514ee531c82)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/9cc6f21a-e02b-4183-98b3-3b22eaaf4190)  
  21.2.4 FULL JOIN cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/3726e197-8c34-438b-a386-487169f43efb)  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/32b413ee-c6a6-4e18-a6b6-606f60d8aca6)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/be7ef877-488e-4704-b11b-78866ed9e382)  
  21.3.1 một số quy tắc truy vấn con cần lưu ý: câu truy vấn con phải nằm trong ngoặc đơn và đặt bên tay phải. ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/69643de0-cd8b-479a-8cb4-a8dfa3bc310a)  
  CHÚ Ý: Phép toán "=" được sử dụng để so sánh giá trị của một cột với một giá trị cụ thể. Phép toán "IN" được sử dụng để so sánh giá trị của một cột với một danh sách các giá trị có thể.  
  21.3.2 truy vấn con nằm trong select; truy vấn con nằm trong from; truy vấn con nằm trong where.  
  21.4 các phép toán tập hợp  (hợp-union; trừ-except; giao-intersect)  
  21.4.1 phép UNION: là kết hợp 2 câu lệnh select với nhau (những điều phần giống nhau chỉ viết 1 lần nếu là union all thì có thể trùng nhau), điều kiện: số cột của 2 select phải bằng nhau và có cùng kiểu dữ liệu. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/e11c8bfe-dff7-43dd-9b88-6652499b4f3d)  
  
  21.4.2 phép EXCEPT: lấy dòng thứ nhất là loại bỏ những thứ trùng lắp. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/1fb5c05d-d4b0-4fc5-a0d9-b06aacfce38a)  
  21.4.3 phép INTERSECT: lấy phần chung của nó. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/56700ffc-ced4-4fac-97d4-fe6ecd45523e)  
  22.View được như một bảng ảo trong CSDL, được đặt tên, định nghĩa khi select và có thể tác động đến. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/8c8badae-cd33-4995-a180-25db32b60a32)  
  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/2e008022-2ed0-41c7-afca-2ded792f5981)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/cce6ee56-d1e4-45cd-bdde-6ded54c78411)  
  chú ý trước khi chạy select * view thì từ bước tạo view phải nhét vào go. ví du: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/40d3f668-8e3b-40eb-a098-f5372a2b89bf)  
        tại sao phải có view vì dù khi kết hợp bảng bằng join thì nó vẫn dữ được tên bảng gốc khi gọi tên cột  
  22.1 đổi tên view cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/cd243099-e9c1-4cf6-99d4-5ba06c2a7c0a)  
  22.2 xóa view cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/e24d8ffc-f679-4ccd-ab8c-5b508b4d3d2c)  
  22.3 ưu điểm của view: đơn giản hóa các thao tác truy vấn; bảo mật dữ liệu; độc lập dữ liệu. nhược điểm: bị phụ thuộc vào table gốc; dữ liệu trong view chỉ là đọc  
  22.4 with check option trong view: mục đích đảm bảo rằng tất cả UPDATE; INSERT thỏa mãn các điều kiện trong view, nếu không thỏa mãn sẽ trả về lỗi. ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/5e1927b6-f34d-4d29-b877-18a51ea39e83)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/e56bdb20-1763-4535-9e85-076be12d5d93)  
  23. trong SQL tổ chức theo từng khối lệnh, một khối lệnh có thể lồng bởi một khối lệnh khác. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/f58570b5-0093-49bd-8324-5009fc290e7f)  
  24. biến trong T-SQL là một đối tượng trong CSDL dùng để lưu dữ liệu tạm thời.  
  24.1 biến hệ thống: cung cấp các thông tin hệ thống  
  24.2 biến do người dùng tự định nghĩa cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/b0882954-fb41-4f08-9743-92d9e5796ced)  
  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/8c8bf2d1-f825-4a96-aa36-b8d7d9de098f)  
  chú ý: CAST (expression AS data_type); expression là giá trị hoặc biểu thức mà bạn muốn chuyển đổi kiểu dữ liệu; data_type là kiểu dữ liệu mà bạn muốn chuyển đổi expression thành.  
  24.3 cấu trúc if-else cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/c25a2dfc-4c5d-415e-862c-e3734e638b29)  
  24.4 câu lệnh case cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/0642662d-bb7d-4378-b735-f26cc51465fd)  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/e55a6d42-3a74-44aa-b00c-e43b3bc85465)  
  24.5 câu lệnh while cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/f1e058e1-d5d7-4dee-a128-6785b55f7bb2)  
  25. thủ tục lưu trữ: là một đối tượng trong CSDL chứa khối lệnh có các khả năng: thực hiện một công việc nào đó có thể sử dụng nhiều lần. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/a392d866-c47f-4540-819e-dc7dfe60ea22)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/5ec8f5b5-054a-4036-8e86-858141ca6124)  
  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/d40c9fc9-7130-4988-86fe-fdf7317f0704)  
  lời gọi hàm thủ tục: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/0993b1e6-9945-47d0-8de7-92daa3c83fcc)  
  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/76705a5d-1c1d-4cc3-b198-579695d0897f)  
  25.1 sửa xóa thủ tục cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/ee67fa85-0a91-4aa9-b6ed-2ee89cfd6efb)  
  26. hàm: giống với thủ tục nhưng khác nhau là hàm trả về giá trị qua tên hàm còn thủ tục thì khác. cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/1e1c67dc-fc73-42e2-bc6a-e7d00ce4413a) ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/e53c9ff5-b51d-4014-a64d-93b459e58881)  
  chú ý: cách gọi hàm: vì hàm trả về là giá trị nên cần phải đọc ra. cú pháp: select.dbo tên hàm (đối số)  
  27. hàm trả về bảng  
  27.1 hàm nội tuyến cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/122bc7bf-4bed-4eba-85f7-1d25343d1c0d)  
  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/5a9b31b7-c4bb-4f91-9c23-cee6e3be55b0)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/84bb8c01-c289-4872-bac9-3f4e8733f031)  
  27.2 hàm nhiều câu lệnh bên trong cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/3433bff3-91db-4a4a-be14-441b8779ef13)  
  ví dụ: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/ef491d60-c683-48a4-9256-277884d27895)  ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/055f4b6a-de5b-4bba-a376-5c22a21368c2)  
  27.3 sửa và xóa hàm cú pháp: ![image](https://github.com/nbn-03/hequantricsdl/assets/98254107/99fbf475-a3dc-42a2-a231-d44709cff2e8)  
  
