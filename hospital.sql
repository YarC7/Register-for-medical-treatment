-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 04:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `bacsi`
--

CREATE TABLE `bacsi` (
  `MaBS` int(255) NOT NULL,
  `HOTEN` varchar(30) NOT NULL,
  `SDT` int(11) NOT NULL,
  `NGAYSINH` date NOT NULL,
  `DIACHI` varchar(100) NOT NULL,
  `GIOITINH` varchar(11) NOT NULL,
  `HINHANH` varchar(64) NOT NULL,
  `MOTA` varchar(255) NOT NULL,
  `GIOKHAM` time(6) NOT NULL,
  `MAKHOA` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bacsi`
--

INSERT INTO `bacsi` (`MaBS`, `HOTEN`, `SDT`, `NGAYSINH`, `DIACHI`, `GIOITINH`, `HINHANH`, `MOTA`, `GIOKHAM`, `MAKHOA`) VALUES
(1, 'Bác sĩ A', 123, '2013-11-14', 'abc', 'nam', 'abc', 'abc', '24:59:51.000000', 'A'),
(2, 'Bác sĩ B', 123, '2013-11-14', 'asd', 'nam', 'none', 'none', '24:59:51.000000', 'B'),
(11, 'TS.Bác sĩ Tăng Hà Nam Anh', 824143969, '1974-11-01', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA CHẤN THƯƠNG CHỈNH HÌNH', '07:30:51.000000', 'A'),
(12, 'TS.Bác sĩ Nguyễn Quang Huy', 825543969, '1970-11-17', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA CHẤN THƯƠNG CHỈNH HÌNH', '13:04:41.000000', 'A'),
(21, 'BSCK1.Nguyễn Thị Kim Loan', 824143977, '1970-11-15', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA CƠ XƯƠNG KHỚP', '07:10:18.000000', 'B'),
(22, 'Bác Sỉ Lê Thị Loan', 824155969, '1988-11-22', 'TP HỒ CHÍ MINH', 'Nữ', '', 'CHUYÊN KHOA CƠ XƯƠNG KHỚP', '13:10:49.000000', 'B'),
(31, 'BSCK1.Lương Thị Gian Lam', 723143969, '1980-11-28', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA DA LIỄU', '08:16:13.000000', 'C'),
(32, 'TS.Bác sĩ Nguyễn Quang Thắng', 624143969, '1988-11-02', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA DA LIỄU', '13:16:13.000000', 'C'),
(41, 'TS.Bác sĩ Vũ Thị Thanh', 444143969, '1975-11-01', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA DINH DƯỠNG', '07:18:59.000000', 'D'),
(42, 'TS.Bác sĩ Lê Thành Nam', 824149969, '1976-11-17', 'BẾN TRE', 'nam', '', 'CHUYÊN KHOA DINH DƯỠNG', '13:18:59.000000', 'D'),
(51, 'GS.TS.Bác Sĩ Trần Quán Anh', 545143969, '1965-11-15', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA NAM HỌC - TIẾT LIỆU', '07:24:05.000000', 'E'),
(52, 'PGS.TS.Bác Sĩ Trần Kim Anh', 824133969, '1967-11-17', 'TP HỒ CHÍ MINH', 'Nữ', '', 'CHUYÊN KHOA NAM HỌC - TIẾT LIỆU', '13:04:41.000000', 'E'),
(61, 'BSCKII.Trần Thị Kim Oanh', 825553969, '1975-11-01', 'LONG AN', 'nữ', '', 'CHUYÊN KHOA NỘI TIẾT', '07:27:49.000000', 'F'),
(62, 'BSCKI.Nguyễn Ngọc Toàn', 847143969, '1980-11-17', 'CẦN GIUỘC', 'nam', '', 'CHUYÊN KHOA NỘI TIẾT', '13:00:49.000000', 'F'),
(71, 'Bác Sĩ Phạm Ngọc Tường Vy', 824543969, '1980-04-28', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA NHI', '08:16:13.000000', 'G'),
(72, 'Bác Sĩ Vũ Văn Tiến', 824143869, '1988-11-22', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA NHI', '13:31:42.000000', 'G'),
(81, 'BSCKII.Nguyễn Đắc Hanh', 824141569, '1970-09-15', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA NỘI TỔNG HỢP', '07:37:02.000000', 'H'),
(82, 'BSCKI.Nguyễn Hồng Lâm', 824156969, '1979-11-17', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA NỘI TỔNG HỢP', '12:59:02.000000', 'H'),
(91, 'BSCK1.Nguyễn Văn Toán', 824593969, '1974-11-01', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA SƠ SINH', '06:59:23.000000', 'I'),
(92, 'BSCKI.Nguyễn Văn Trỗi', 824983969, '1970-11-29', 'BÌNH DƯƠNG', 'nam', '', 'CHUYÊN KHOA SƠ SINH', '15:40:23.000000', 'I'),
(101, 'ThS.BS Chu Bắc Hà', 824192969, '1974-01-01', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA SẢN PHỤ KHOA', '08:16:13.000000', 'J'),
(102, 'ThS.BS Hà Anh Tuấn', 824333969, '1988-02-02', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA SẢN PHỤ KHOA', '13:00:09.000000', 'J'),
(111, 'BSCKI.Trần Phương Thanh', 866143969, '1974-07-01', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA TAI MŨI HỌNG', '07:57:32.000000', 'K'),
(112, 'BSCKII.Trần Thanh thảo', 824177969, '1988-09-22', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA TAI MŨI HỌNG', '13:57:32.000000', 'K'),
(121, 'Bác sĩ Vũ Văn Nam', 833143969, '1972-11-15', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA THẦN KINH', '09:00:56.000000', 'L'),
(122, 'Bác Sĩ Trần Thành Nam', 824199969, '1967-11-17', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA THẦN KINH', '15:00:56.000000', 'L'),
(131, 'BSCKII.Nguyễn Thu Trang', 824146969, '1970-11-15', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA TIM MẠCH', '07:20:31.000000', 'M'),
(132, 'BSCKI.Nguyễn Thị Hiền', 734143969, '1976-11-17', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA TIM MẠCH', '13:20:31.000000', 'M'),
(141, 'ThS.BSNT Bùi Quang Thạch', 824121969, '1970-08-15', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA TIÊU HÓA-GAN MẬT-TỤY', '07:11:20.000000', 'N'),
(142, 'Ths.BS Bùi Tiến Dũng', 824143157, '1978-11-22', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA TIÊU HÓA-GAN MẬT-TỤY', '13:11:20.000000', 'N'),
(151, 'BSCKII.Nguyễn Minh Tuấn', 823343969, '1970-04-15', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA TÂM THẦN', '08:16:13.000000', 'O'),
(152, 'BSCKI.Nguyễn Tuấn Tài', 624143969, '1988-11-02', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA TÂM THẦN', '13:25:30.000000', 'O'),
(161, 'Bác Sĩ Trần Thị Thiên Hương', 824199969, '1980-04-28', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA UNG BƯỚU', '07:33:55.000000', 'P'),
(162, 'Bác Sĩ Huỳnh Tài', 324143969, '1987-11-17', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA UNG BƯỚU', '14:33:55.000000', 'P'),
(171, 'PGS.TS.BS Chu Thị Hạnh', 824779969, '1970-07-15', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA HÔ HẤP', '07:36:16.000000', 'Q'),
(172, 'TS.BS Huỳnh Văn Tài', 822243969, '1976-01-17', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA HÔ HẤP', '13:36:16.000000', 'Q'),
(181, 'Bác Sĩ Lê Văn Nhâm', 824199869, '1980-04-28', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA HỒI SỨC TÍCH CỰC', '08:16:13.000000', 'S'),
(182, 'TS.BS Nguyễn Kim Hạnh', 334143969, '1973-11-02', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA HỒI SỨC TÍCH CỰC', '13:38:32.000000', 'S'),
(191, 'ThS.BS Nguyễn Hữu Phương', 877143969, '1975-11-01', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA MẮT', '08:41:18.000000', 'T'),
(192, 'TS.BS Nguyễn Văn Tiến', 824136969, '1967-11-17', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA MẮT', '14:41:18.000000', 'T'),
(201, 'ThS.BS Lê Văn Lượng', 811143969, '1974-01-01', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA NGOẠI TIÊU HÓA', '07:44:35.000000', 'U'),
(202, 'TS.BS Nguyễn Vân Thùy', 824166969, '1970-11-17', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA NGOẠI TIÊU HÓA', '13:44:35.000000', 'U'),
(211, 'BSCKI.Nguyễn Văn Chiến', 824643969, '1975-11-01', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA NGOẠI TỔNG HỢP', '07:30:11.000000', 'V'),
(212, 'BS Nguyễn Kim Hoàng', 861143969, '1976-11-17', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA NGOẠI TỔNG HỢP', '13:00:11.000000', 'V'),
(221, 'BSCKII.Lê Văn Khánh', 824140969, '1974-01-01', 'TP HỒ CHÍ MINH', 'nam', '', 'CHUYÊN KHOA CHUẨN ĐOÁN HÌNH ẢNH', '06:50:05.000000', 'X'),
(222, 'BS Trần Kim Hạnh', 800143969, '1988-11-02', 'TP HỒ CHÍ MINH', 'nữ', '', 'CHUYÊN KHOA CHUẨN ĐOÁN HÌNH ẢNH', '14:00:05.000000', 'X'),
(231, 'BSCKI. Cát Hồng Hà', 992297290, '2013-11-14', 'TP HỒ CHÍ MINH\r\n', 'nữ', 'none', 'Chuyên khoa Ung bướu', '24:59:51.000000', 'Y'),
(232, 'Bác sĩ Hồng Kim Nguyên', 988877555, '2022-11-22', 'TP. Hồ Chí Minh', 'Nữ', 'none', 'Chuyên khoa Ung bướu', '34:20:55.000000', 'Y'),
(241, 'BSCKI.Cao Tuấn Anh', 827743969, '1974-11-01', 'TP HỒ CHÍ MINH', 'nam', '', 'TRUNG TÂM HỖ TRỢ SINH SẢN', '08:16:13.000000', 'Z'),
(242, 'Bác Sĩ Phạm Hồng Thái', 674143969, '1988-01-09', 'TP HỒ CHÍ MINH', 'nam', '', 'TRUNG TÂM HỖ TRỢ SINH SẢN', '12:52:57.000000', 'Z');

-- --------------------------------------------------------

--
-- Table structure for table `giokham`
--

CREATE TABLE `giokham` (
  `giokham` text NOT NULL,
  `MaBS` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giokham`
--

INSERT INTO `giokham` (`giokham`, `MaBS`) VALUES
('5h30 - 8h', 11),
('5h30 - 8h', 12),
('5h30 - 8h', 21),
('5h30 - 8h', 22),
('5h30 - 8h', 31),
('5h30 - 8h', 32),
('5h30 - 8h', 41),
('5h30 - 8h', 42),
('10h - 13h30', 51),
('10h - 13h30', 52),
('10h - 13h30', 61),
('10h - 13h30', 62),
('10h - 13h30', 71),
('10h - 13h30', 72),
('10h - 13h30', 81),
('10h - 13h30', 82),
('10h - 13h30', 91),
('10h - 13h30', 92),
('15h - 19h30', 101),
('15h - 19h30\r\n', 102),
('15h - 19h30\r\n', 111),
('15h - 19h30\r\n', 112),
('15h - 19h30\r\n', 121),
('15h - 19h30\r\n', 122),
('15h - 19h30\r\n', 131),
('15h - 19h30\r\n', 132),
('15h - 19h30\r\n', 132),
('15h - 19h30\r\n', 141),
('15h - 19h30\r\n', 142),
('15h - 19h30\r\n', 151),
('15h - 19h30\r\n', 152),
('15h - 19h30\r\n', 161),
('15h - 19h30\r\n', 162),
('5h30 - 8h ', 171),
('5h30 - 8h', 172),
('5h30 - 8h', 181),
('5h30 - 8h', 182),
('5h30 - 8h', 191),
('5h30 - 8h', 192),
('5h30 - 8h', 201),
('5h30 - 8h', 202),
('10h - 13h30', 211),
('10h - 13h30', 212),
('10h - 13h30 ', 122),
('10h - 13h30 \r\n', 231),
('10h - 13h30 \r\n', 232),
('10h - 13h30 \r\n', 241),
('10h - 13h30 \r\n', 242);

-- --------------------------------------------------------

--
-- Table structure for table `ketqua`
--

CREATE TABLE `ketqua` (
  `Maphieu` int(11) NOT NULL,
  `ketqua` varchar(255) NOT NULL,
  `nen` varchar(255) NOT NULL,
  `knen` varchar(255) NOT NULL,
  `ngaytaikham` date NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ketqua`
--

INSERT INTO `ketqua` (`Maphieu`, `ketqua`, `nen`, `knen`, `ngaytaikham`, `image1`, `image2`) VALUES
(1, 'Mệt mỏi', 'Uống nhiều nước, an uống đầy đủ', 'thức khuya', '2022-11-16', 'none', 'none'),
(2, 'Nhức đầu', 'Ngủ sớm ', 'Ngủ trễ', '2022-11-16', 'none', 'none'),
(3, 'Tiểu đường', 'Ăn uống đủ dinh dưỡng', 'hạn chế uống nước ngọt', '2022-11-17', 'none', 'none'),
(4, 'Mất ngủ', 'ăn ngon ngủ sớm', 'chơi game ', '2022-11-24', 'none', 'none'),
(5, 'Sốt xuất huyết', 'Uống nhiều nước, vitamin c', 'Uống ăn đồ màu đỏ, đen', '2022-11-24', 'none', 'none'),
(6, 'Viêm họng', 'Ăn chín, uống sôi', 'Ăn cay, uống nước đá', '2022-11-24', 'none', 'none'),
(7, 'Đau bao tử', 'Ăn sáng đủ cử', 'bỏ bữa', '2022-11-24', 'none', 'none'),
(8, 'Dị ứng thức ăn', 'Mặc quần áo rộng, thoáng, nghỉ ngơi, dùng thuốc theo chỉ định bác sĩ', 'Tắm, không lau người bằng nước nóng', '2022-11-24', 'none', 'none'),
(9, 'Viêm xoang', 'Ăn uống đầy đủ, uống thuốc theo chỉ định bác sĩ', 'Tránh xa môi trường khói thuốc và không khí ô nhiễm', '2022-11-24', 'none', 'none'),
(10, 'Cảm cúm', 'Tắm nước nóng, nghỉ ngơi, thư giãn', 'Uống sữa, thịt đỏ, thực phẩm cay', '2022-11-25', 'none', 'none'),
(11, 'Bệnh đau xương khớp', 'Tập thể dục điều đặn, sử dụng thuốc tây, thuốc nam', 'Không ăn nhiều dầu mỡ, đồ ăn nhanh', '2022-11-25', 'none', 'none'),
(12, 'Sốt', 'Ngủ nhiều, uống sủi hạ sốt, uống cam', 'Tắm lạnh, kiêng tắm', '2022-11-26', 'none', 'none'),
(13, 'Bệnh tay chân miệng', 'Giữ ấm cơ thể, ăn uống đủ chất, tăng sức đề kháng', 'Không ăn thức ăn đặc, cay, nóng. Kiêng nước', '2022-11-26', 'none ', 'none'),
(14, 'Sốt rét', 'Uống thuốc hạ sốt', 'Làm mát cơ thể, ngăn ngừa mất nước; ăn thức ăn nhẹ dễ tiêu hoá; nghỉ ngơi, thư giãn; mặc quần áo thoáng mát.', '2022-11-26', 'none', 'none'),
(15, 'Bệnh đường tiêu hóa', 'Uống nhiều nước, bổ sung chất xơ, luyện tập thể thao, ăn đủ bữa, ăn chậm nhai kỹ', 'Không dùng thực phẩm đóng hộp, hút thuốc, thức khuya', '2022-11-27', 'none', 'none'),
(16, 'Đau họng', 'Uống thuốc tây', 'Uống đá, ăn lạnh', '2022-11-27', 'none', 'none'),
(17, 'Đau bụng ', 'Ăn chính uống sôi', 'hạn chế ăn thức ăn nhanh, đồ ăn thiếu dinh dưỡng', '2022-11-27', 'none', 'none'),
(18, 'Ngộ độc thực phẩm', 'Uống Oresol, nghỉ ngơi và uống nhiều nước', 'Thức uống có cồn, thức uống chứa caffeine, thức ăn cay, quá ngọt, nhiều dầu mỡ', '2022-11-28', 'none', 'none'),
(19, 'Suy nhược cơ thể', 'nghỉ ngơi càng nhiều, uống thuốc đúng chỉ định điều trị', 'Hút thuốc, uống bia rượu, thức khuya', '2022-11-28', 'none', 'none'),
(20, 'Viêm phổi', 'Tập thể dục, ăn uống đầy đủ, uống thuốc kháng sinh, điều trị hô hấp theo hướng dẫn của Bác sĩ', 'Hút thuốc, uống rượu bia, thức khuya, không ăn thức ăn chiên, xào, nướng chứa nhiều gia vị và dầu mỡ', '2022-11-29', 'none', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `MAKHOA` varchar(5) NOT NULL,
  `TENKHOA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`MAKHOA`, `TENKHOA`) VALUES
('A', 'Chuyên khoa Chấn thương chỉnh hình'),
('B', 'Chuyên khoa Cơ xương khớp'),
('C', 'Chuyên khoa Da Liễu'),
('D', 'Chuyên khoa Dinh Dưỡng'),
('E', 'Chuyên khoa Nam học - Tiết Niệu'),
('F', 'Chuyên khoa Nội tiết'),
('G', 'Chuyên khoa Nhi'),
('H', 'Chuyên khoa Nội tổng hợp'),
('I', 'Chuyên khoa Sơ sinh'),
('J', 'Chuyên khoa Sản phụ khoa'),
('K', 'Chuyên khoa Tai mũi họng'),
('L', 'Chuyên khoa Thần kinh'),
('M', 'Chuyên khoa Tim mạch'),
('N', 'Chuyên khoa Tiêu hóa - Gan mật - Tụy'),
('O', 'Chuyên khoa Tâm thần'),
('P', 'Chuyên khoa Ung bướu'),
('Q', 'Chuyên khoa hô hấp'),
('S', 'Chuyên khoa hồi sức tích cực'),
('T', 'Chuyên khoa mắt'),
('U', 'Chuyên khoa ngoại tiêu hóa'),
('V', 'Chuyên khoa ngoại tổng hợp'),
('X', 'Khoa Chẩn đoán hình ảnh'),
('Y', 'Khác'),
('Z', 'Trung tâm hỗ trợ sinh sản');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `hoten` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`, `hoten`) VALUES
('canhga177@gmail.com', 'SADSADSADSA', 'Cảnh Nguyễn Đức'),
('nguyenduccanh1727@gmail.com', '123456', 'Cảnh Nguyễn Đức'),
('Tailor.Wegner@EasyMailer.live', 'SADSADSADSA', 'NGuyễn Văn A');

-- --------------------------------------------------------

--
-- Table structure for table `phieuhen`
--

CREATE TABLE `phieuhen` (
  `maphieu` int(255) NOT NULL,
  `hoten` varchar(64) NOT NULL,
  `gioitinh` varchar(5) NOT NULL,
  `namsinh` int(4) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sdt` text NOT NULL,
  `ngaykham` date NOT NULL,
  `giokham` time NOT NULL,
  `mota` varchar(256) NOT NULL,
  `maxacthuc` int(255) NOT NULL,
  `trangthai` varchar(256) NOT NULL,
  `MaBS` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieuhen`
--

INSERT INTO `phieuhen` (`maphieu`, `hoten`, `gioitinh`, `namsinh`, `diachi`, `sdt`, `ngaykham`, `giokham`, `mota`, `maxacthuc`, `trangthai`, `MaBS`) VALUES
(1, 'Nguyễn Trường An\r\n', 'Nam', 2000, ' Số 402 Phạm Văn Hai, Phường 5, Quận Tân Bình', '0898467785', '2022-04-07', '10:00:00', 'Mệt mỏi', 1, 'Cơ thể có cảm giác uể oải, kiệt sức', 81),
(2, 'Nguyễn Thiên An\r\n', 'Nữ', 2001, '156, Phan Xích Long, P.2, Q. Phú Nhuận', '08987789546', '2022-06-14', '15:00:00', 'Nhức đầu', 2, 'Đau đầu từng cơn', 121),
(3, 'Nguyễn Huỳnh Anh\r\n', 'Nam', 2001, '199 Nam Kỳ Khởi Nghĩa, P.7, Q.3', '0918799457', '2022-08-17', '11:00:00', 'Tiểu đường', 3, 'Đi tiểu thường xuyên và liên tục khát nước.', 61),
(4, 'Nguyễn Hoàng Anh\r\n', 'Nam', 1999, '19C Cộng Hòa, P.12, Q. Tân Bình', '01238965478', '2022-08-16', '16:00:00', 'Mất ngủ', 4, 'Hay thức dậy vào ban đêm', 122),
(5, 'Nguyễn Gia Bảo\r\n', 'Nam', 2000, '18/38 Vườn Chuối, P.4, Q.3', '0898785448', '2022-10-04', '11:00:00', 'Sốt xuất huyết', 5, 'Sốt cao đột ngột, liên tục 39 - 40 độ C.', 82),
(6, 'Nguyễn Duy Bảo	', 'Nam', 2001, '278 Nguyễn Đình Chiểu, P.6, Q.3', '0703598745', '2022-05-05', '15:00:00', 'Viêm họng', 6, 'Cảm giác ngứa trong cổ họng. Đau trầm trọng hơn khi nuốt hoặc nói.', 111),
(7, 'Nguyễn Quốc Cường	', 'Nam', 1998, '156 Phan Xích Long, Phường 2, Quận Phú Nhuận ', '0797456845', '2022-09-28', '15:00:00', 'Đau bao tử', 7, 'Đầy bụng, khó tiêu,chán ăn', 141),
(8, 'Nguyễn Tuấn Dũng\r\n', 'Nam', 1999, '69 Võ Văn Tần, P.6, Q.3', '0907878495', '2022-08-18', '07:00:00', 'Dị ứng thức ăn', 8, 'Nổi mề đay, ngứa ngáy, ngứa ran và ngứa trong miệng.', 42),
(9, 'Nguyễn Quang Duy\r\n', 'Nam', 2000, '27A Hoàng Việt, P.4, Q. Tân Bình', '0898498865', '2022-11-08', '16:00:00', 'Viêm xoang', 9, 'ngạt mũi, chảy mũi mủ, đau nhức sọ mặt', 111),
(10, 'Nguyễn Thành Đạt\r\n', 'Nam', 1999, '285B Điện Biên Phủ, P.7, Q.3', '01238932180', '2022-11-12', '17:00:00', 'Cảm cúm', 10, 'Thường xuyên ho, đau họng, sổ mũi hoặc nghẹt mũi, đau nhức cơ', 111),
(11, 'Nguyễn Minh Đức\r\n', 'Nam', 2002, '220 Lũy Bán Bích, P. Tân Thành, Q. Tân Phú', '0704689754', '2022-01-14', '07:00:00', 'Bệnh đau xương khớp', 11, 'Đau khớp, cứng khớp, đỏ và ấm khu vực xung quanh khớp bị ảnh hưởng.', 22),
(12, 'Nguyễn Quang Huy	', 'Nam', 2000, '160 Cộng Hòa, P.12, Q.Tân Bình', '0898135567', '2022-09-25', '11:00:00', 'Sốt', 12, 'Thường cảm thấy lạnh, đau đầu, đau cơ.', 81),
(13, 'Nguyễn Quốc Hùng\r\n', 'Nam', 1999, '100-102 Nguyễn Văn Trỗi, P.8, Q. Phú Nhuận', '0898467781', '2022-08-28', '11:00:00', 'Bệnh tay chân miệng', 13, 'Rát đỏ, mụn nước quanh miệng, lòng bàn tay, bàn chân.', 62),
(14, 'Nguyễn Việt Hùng	', 'Nam', 2002, '391 Điện Biên Phủ, P.4, Q.3', '0918066473', '2022-08-28', '12:00:00', 'Sốt rét', 14, 'Cảm thấy ớn lạnh, gay gắt, đổ mồ hôi, tiêu chảy, đau bụng', 81),
(15, 'Nguyễn Minh Hoàng\r\n', 'Nam', 1999, '84B Trần Quốc Toản, P.8, Q.3', '0703824156', '2022-04-18', '16:00:00', 'Bệnh đường tiêu hóa', 15, 'Đau bụng mạn tính, hơi thở hôi, buồn nôn', 142),
(16, 'Nguyễn Tuấn Kiệt\r\n', 'Nam', 2001, '35 Nguyễn Kiệm, Phường 3, Quận Gò Vấp', '0703415561', '2022-05-17', '17:00:00', 'Đau họng', 16, 'Đau, sưng hạch ở cổ, giọng nói khàn.', 111),
(17, 'Nguyễn Trung Kiên\r\n', 'Nam', 1998, '04 Hàn Thuyên, Bình Thọ, Thủ Đức', '0898137758', '2022-07-26', '18:00:00', 'Đau bụng', 17, 'Thường xuyên cảm thấy đau bụng.', 142),
(18, 'Nguyễn Đức Kiên', 'Nam', 2002, '101 Lý Chiêu Hoàng, P.10, Q.6', '0709845654', '2022-04-27', '11:30:00', 'Ngộ độc thực phẩm', 18, 'Cảm thấy nôn mửa, tiêu chảy, đau bụng dữ dội', 81),
(19, 'Nguyễn Nguyên Khải	', 'Nam', 2002, '19 – Hoàng Minh Giám, Phường 9, Quận Phú Nhuận', '0898131135', '2022-11-16', '16:30:00', 'Suy nhược cơ thể', 19, 'Mệt mỏi, kiệt sức, hay đổ mồ hôi, nhức đầu, khó ngủ.', 152),
(20, 'Nguyễn Minh Khang\r\n', 'Nam', 2002, '391 Lạc Long Quân, Phường 5, Quận 11', '0898136734', '2022-03-30', '12:30:00', 'Viêm phổi', 20, 'Ho, ho có đờm, nôn mửa, đổ mồ hôi và ớn lạnh.', 81),
(22, 'Cảnh Nguyễn Đức', 'Nam', 2002, 'Đường Tôn Đức Thắng , Tổ 4 Khu 12 Nhà 291', '0915993182', '2022-11-02', '21:24:00', 'none', 1234567, 'none', 42),
(23, 'Cảnh Nguyễn Đức', 'Nam', 2002, 'Đường Tôn Đức Thắng , Tổ 4 Khu 12 Nhà 291', '0915993182', '2022-10-31', '12:26:00', '3456', 67890, '3456', 32),
(24, 'Cảnh Nguyễn Đức', 'Nam', 2002, 'Đường Tôn Đức Thắng , Tổ 4 Khu 12 Nhà 291', '0915993182', '2022-11-09', '03:28:00', '345678', 45, '56789', 82),
(25, 'Cảnh Nguyễn Đức', 'Nam', 2006, 'Đường Tôn Đức Thắng , Tổ 4 Khu 12 Nhà 291', '0915993182', '2022-11-08', '11:31:00', '567', 3456, '567', 41);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bacsi`
--
ALTER TABLE `bacsi`
  ADD PRIMARY KEY (`MaBS`),
  ADD KEY `bacsi_ibfk_1` (`MAKHOA`);

--
-- Indexes for table `giokham`
--
ALTER TABLE `giokham`
  ADD KEY `MaBS` (`MaBS`);

--
-- Indexes for table `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`Maphieu`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MAKHOA`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phieuhen`
--
ALTER TABLE `phieuhen`
  ADD PRIMARY KEY (`maphieu`),
  ADD KEY `maxacthuc` (`maxacthuc`),
  ADD KEY `MaBS` (`MaBS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phieuhen`
--
ALTER TABLE `phieuhen`
  MODIFY `maphieu` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bacsi`
--
ALTER TABLE `bacsi`
  ADD CONSTRAINT `bacsi_ibfk_1` FOREIGN KEY (`MAKHOA`) REFERENCES `khoa` (`MAKHOA`);

--
-- Constraints for table `giokham`
--
ALTER TABLE `giokham`
  ADD CONSTRAINT `giokham_ibfk_1` FOREIGN KEY (`MaBS`) REFERENCES `bacsi` (`MaBS`);

--
-- Constraints for table `ketqua`
--
ALTER TABLE `ketqua`
  ADD CONSTRAINT `ketqua_ibfk_1` FOREIGN KEY (`Maphieu`) REFERENCES `phieuhen` (`maxacthuc`);

--
-- Constraints for table `phieuhen`
--
ALTER TABLE `phieuhen`
  ADD CONSTRAINT `phieuhen_ibfk_1` FOREIGN KEY (`MaBS`) REFERENCES `bacsi` (`MaBS`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
