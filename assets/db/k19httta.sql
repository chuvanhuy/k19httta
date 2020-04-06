-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 25, 2020 lúc 04:27 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `k19httta`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tin_tuc`
--

CREATE TABLE `tbl_tin_tuc` (
  `id` int(11) NOT NULL,
  `loai_tin_id` int(11) NOT NULL,
  `tieu_de` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `anh_minh_hoa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `so_luot_doc` int(11) NOT NULL,
  `tac_gia` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_dang` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tin_tuc`
--

INSERT INTO `tbl_tin_tuc` (`id`, `loai_tin_id`, `tieu_de`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `so_luot_doc`, `tac_gia`, `ngay_dang`) VALUES
(1, 1, 'Số người chết vì nCoV ở Italy cao gấp đôi Trung Quốc', 'Italy ghi nhận 6.820 ca tử vong trong số 69.176 người nhiễm, trong khi Trung Quốc đại lục báo cáo 3.277 người chết. ', 'Số người chết vì nCoV ở Italy trong vòng 24 giờ qua tăng thêm 743, cao thứ hai kể từ khi Covid-19 xuất hiện ở nước này và nhiều hơn đáng kể so với con số 602 ca tử vong mới hôm 23/3. Với những trường hợp mới ghi nhận, số người chết vì nCoV ở Italy đã cao hơn gấp đôi Trung Quốc.\r\n\r\nDo việc xét nghiệm ở Italy chỉ giới hạn cho những người có triệu chứng nghiêm trọng, Angelo Borrelli, giám đốc Cơ quan Bảo vệ Dân sự Italy, hôm qua cho biết số bệnh nhân Covid-19 trên thực tế có thể cao gấp 10 lần con số báo cáo. ', 'covid-19 tai Italy.jpg', 0, 'VnExpress.net', '2020-03-25 00:54:37'),
(2, 1, 'Bốn loại thuốc tiềm năng điều trị Covid-19', 'Các nhà nghiên cứu trên toàn thế giới đang trong cuộc đua tìm ra loại thuốc hiệu quả và an toàn để điều trị Covid-19.', 'Các nhà nghiên cứu trên toàn thế giới đang trong cuộc đua tìm ra loại thuốc hiệu quả và an toàn để điều trị Covid-19.\r\n\r\nThông thường, việc phát triển một loại thuốc mới mất nhiều năm liền. Song với nỗ lực của giới chuyên gia, tuần trước, Tổ chức Y tế Thế giới (WHO) đã xác nhận danh sách 4 loại thuốc kháng virus tiềm năng điều trị Covid-19. Danh sách có tên gọi Solidarity bao gồm: thuốc điều trị Ebola Remdesivir, tổ hợp thuốc kháng HIV/AIDS lopinavir và ritonavir, tổ hợp thuốc khác giữa lopinavir và ritonavir cộng thêm interferon beta (thuốc chữa đa xơ cứng) và thuốc sốt rét Chloroquine.\r\n\r\nRemdesivir là thuốc tiêm tĩnh mạch phát triển bởi công ty công nghệ sinh học Gilead Sciences, được báo cáo là một ứng cử viên tiềm năng. Các nhà khoa học trên thế giới đang tiến hành 5 thử nghiệm lâm sàng để kiểm chứng độ an toàn và hiệu quả của nó đối với virus. Kết quả của hai trong số đó sẽ có vào tháng 4.\r\n\r\nThuốc lần đầu được sử dụng với mục đích nhân đạo cho các bệnh nhân nghiêm trọng ở Trung Quốc và mở rộng đến các nước khác vào tháng 2. Song nhà sản xuất sau đó đã tuyên bố ngừng phân phối bởi nhu cầu sử dụng nhân đạo quá lớn.', '4 loai thuoc dieu tri covid-19.jpg', 0, 'VnExpress.net', '2020-03-25 00:54:37'),
(3, 2, 'MacBook Air 2020 giá từ 29 triệu đồng tại Việt Nam ', 'MacBook Air vừa ra mắt dự kiến được bán tại Việt Nam từ tháng 5 với giá 29 triệu đồng cho phiên bản thấp nhất.', 'Với mức này, MacBook Air 2020 sẽ ngang giá với MacBook Air 2019 khi lên kệ thị trường Việt Nam năm ngoái. Nhiều khả năng, đây là phiên bản tiêu chuẩn với chip xử lý Intel Core i5, bộ nhớ RAM 8GB. Một điểm khác biệt so với phiên bản 2019 là bộ nhớ thấp nhất của máy đã được nâng lên mức 256 GB thay vì 128 GB như trước đây.\r\n\r\nMacBook Air 2020 có ngoại hình tương tự thế hệ trước. Ngoài ra, máy vẫn dùng màn hình Retina kích thước 13,3 inch công nghệ TrueTone. Điểm khác biệt chính nằm ở bàn phím với việc sử dụng Magic Keyboard - bàn phím dạng cắt kéo giống MacBook 16 inch, thay vì loại cánh bướm nhiều nhược điểm như trước. Máy cũng được trang bị chip Intel Core i thế hệ thứ 10, được cho là có hiệu năng cao gấp đôi so với thế hệ cũ, trong khi giá khởi điểm là 999 USD, thấp hơn 100 USD so với sản phẩm tiền nhiệm.\r\n\r\nCùng với iPad Pro và MacBook Air, mẫu Mac Mini mới cũng sẽ sớm được bán tại Việt Nam. Giá dự kiến của sản phẩm này lần lượt là 22 và 30 triệu đồng cho hai phiên bản bộ nhớ 256 GB và 512 GB.', 'macbook air 2020.png', 0, 'Hùng Nguyễn', '2020-03-25 00:58:19'),
(4, 2, 'Giá TV 4K màn hình 75 inch lao dốc', 'Giá TV 4K cỡ lớn tại Việt Nam đã xuống thấp nhất trong vòng ba năm trở lại đây.', 'Hai năm trước, NU7100, mẫu TV 4K tầm trung của Samsung, có giá 80 triệu đồng cho phiên bản 75 inch. Hiện tại, hai mẫu TV 4K kích thước 75 inch đời 2020 của Samsung, TU7000 và TU8100, với thông số tương tự NU7000 nói trên nhưng giá lần lượt 42,9 và 47,9 triệu đồng.\r\n\r\nThực tế, giá TV 4K cỡ 75 inch ở Việt Nam còn thấp hơn mức 40 triệu đồng. Tiêu biểu là Samsung RU7100. Sau đợt điều chỉnh giữa tháng 3, dòng TV 4K phổ thông đời 2019 này còn chưa tới 29 triệu đồng cho phiên bản 75 inch. Trước đó, mức niêm yết của model này là 60 triệu đồng, chênh lệch với giá hiện tại hơn 50%. Samsung cũng còn một model 75 inch khác giá giảm một nửa là Q65R thuộc dòng QLED cao cấp hơn. Giá sản phẩm đã xuống 35 triệu đồng, trong khi mức niêm yết ban đầu là 84 triệu đồng.\r\n\r\nNgay cả với Sony, thương hiệu điện tử Nhật Bản ít khi giảm giá sản phẩm, nay cũng có nhiều mẫu điều chỉnh sâu. Điển hình là mẫu X8000G còn 32 triệu đồng cho phiên bản 75 inch. Sản phẩm này trở thành TV 4K có giá thấp nhất từ trước đến giờ của Sony tại Việt Nam. So với mức niêm yết gần 49,8 triệu đồng trước đây, giá thực tế đã thấp hơn gần 40%.\r\n\r\nMẫu 4K cao cấp hơn của Sony, X8500G, cũng không nằm ngoài xu hướng. Tính tới giữa tháng 3, model 75 inch đã xuống dưới 40 triệu đồng. Cùng thời điểm này năm ngoái, model 75 inch tiền nhiệm, X8500F, vẫn được bán với giá hơn 50 triệu đồng.\r\n\r\nHiện tại, số lượng TV 4K kích thước 75 inch ở thị trường Việt Nam đã quá nhiều khiến các hãng phải giảm giá để cạnh tranh. Thống kê tại một siêu thị điện máy ở Hà Nội, số model 75 inch đang được bán là 40 mẫu, nhiều gấp rưỡi năm ngoái và gấp đôi hai năm trước. Riêng tầm giá 30 triệu đồng đã có gần 10 lựa chọn với 5 thương hiệu khác nhau. Trong khi chỉ một năm trước, số tiền này chỉ đủ mua TV 4K tầm 65 inch. Đó còn chưa kể thị trường còn xuất hiện TV 4K kích thước lớn từ Trung Quốc với giá xấp xỉ 20 triệu đồng, như model 75A8 của TCL. \r\n\r\nĐầu 2020, hãng nghiên cứu thị trường IHS Market dự báo giá TV 4K cỡ lớn 65 đến 75 inch sẽ tiếp tục giảm mạnh trong năm nay. Lý do nằm ở chi phí sản xuất các tấm nền LCD cỡ lớn ngày càng giảm. Các nhà máy sản xuất màn hình LCD thế hệ 10,5 đã sẵn sàng đáp ứng nhu cầu lớn. \r\n\r\nIHS Market cũng dự đoán doanh số TV 75 inch trở lên trong 2020 sẽ tăng gấp đôi năm ngoái, lên mức 7% thị phần, tính riêng tại Mỹ. Ở Việt Nam, từ năm 2017, thị phần TV kích thước từ 75 inch đã tăng hơn 50% sau mỗi năm.\r\n\r\nSo với màn hình 65 inch, diện tích hiển thị của màn hình 75 inch lớn hơn 30% dù chỉ tăng kích cỡ thêm 10 inch. Còn so với màn hình 55 inch, diện tích hiển thị của TV cỡ lớn này rộng gần gấp đôi.\r\n\r\nVới TV 4K kích cỡ 75 inch, khoảng cách ngồi xem phù hợp là từ  2,2 đến 3,8 m.', 'tv4k.jpg', 0, 'Kim Chi', '2020-03-25 00:58:19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
