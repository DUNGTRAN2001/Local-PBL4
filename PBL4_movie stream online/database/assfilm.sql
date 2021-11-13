-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 10:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assfilm`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Phim thuyết minh'),
(2, 'Phim hài hước'),
(4, 'Phim âm nhạc'),
(5, 'Phim thiếu nhi'),
(6, 'Phim hoạt hình'),
(7, 'Phim thần thoại'),
(8, 'Phim tâm lý'),
(9, 'Phim hành động'),
(10, 'Phim phiêu lưu'),
(11, 'Phim viễn tưởng'),
(14, 'Phim kinh dị'),
(16, 'Phim cổ trang');

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `episode` int(10) NOT NULL,
  `episode_name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `content` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `episode`
--

INSERT INTO `episode` (`id`, `film_id`, `episode`, `episode_name`, `content`) VALUES
(1, 122, 1, 'Full', 'images/video/film122-1.mp4'),
(2, 121, 1, '1', 'images/video/film121-1.mp4'),
(3, 1, 1, '0', 'images/video/film121-1.mp4'),
(4, 207, 1, 'Full', 'images/video/film207.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name2` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `actor` varchar(200) NOT NULL,
  `category_id` int(2) NOT NULL,
  `type_movie` int(20) NOT NULL,
  `nation_id` int(100) NOT NULL,
  `year` int(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `duration` int(5) NOT NULL,
  `num_view` int(11) NOT NULL,
  `author` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `name`, `name2`, `status`, `director`, `actor`, `category_id`, `type_movie`, `nation_id`, `year`, `image`, `description`, `duration`, `num_view`, `author`) VALUES
(1, 'GHÉT THÌ YÊU THÔI', 'VTV3(2018)', 'Tập 28/28 HD Thuyết Minh', 'Đỗ Thanh Hải', 'Vân Dung, MSUT Chí Trung, Phương Anh, Đình Tú', 1, 2, 2, 2018, 'images/p0.jpg', 'Phim Ghét Thì Yêu Thôi sẽ đem đến cho khán giả những tràng cười thú vị thông qua lời thoại dí dỏm, lối diễn hài tự nhiên của các diễn viên và cả những tình huống dở khóc dở cười xảy ra giữa các cặp đôi oan gia. Phim Ghet Thi Yeu Thoi Tap 8 xoay quanh mối tình đầy ắp những rắc rối, tranh cãi giữa hai bạn trẻ vốn coi nhau là \"kẻ thù không đội trời chung\". đôi bạn trẻ Kim (Phương Anh) và Du (Đình Tú). Cuộc tình của họ khởi đầu như một \"cơn ác mộng\" và cả hai coi nhau như là cái gai trong mắt. Tuy nhiên, sau một sự cố bất ngờ, Kim và Du dần dần hiểu nhau hơn và tình cảm đến một cách tự nhiên.', 45, 2, 'Không xác định '),
(2, 'KHÁCH SẠN HUYỀN BÍ 3', 'Hotel Transylvania 3: Summer Vacation(2015)', 'Hoàn tất ', 'Genndy Tartakovsky', 'Steve Buscemi, Selena Gomez, Adam Sandler, Kevin James, Andy Samberg', 6, 1, 1, 2015, 'images/p.jpg', 'Phim Khách Sạn Huyền Bí 3: Kỳ Nghỉ Ma Cà Rồng lần này sẽ là “cuộc chơi lớn” với một phen tiệc tùng sang chảnh hết nấc của gia đình Dracula. Đã quá “ngán” với cường độ làm việc chăm chỉ 365 ngày không nghỉ, bá tước Dracula quyết định đòi “đình công”. Để khai sáng cho người cha trăm tuổi chưa bao giờ bước ra khỏi “lũy tre làng”, vợ chồng nhà Jonathan – Mavis lập một kế hoạch xả hơi táo bạo: Thuê đứt một du thuyền du lịch hạng sang để đưa tất thảy bộ xậu quái vật già trẻ lớn bé làm một chuyến ra khơi nhớ đời.', 99, 59126, 'Không xác định'),
(3, 'ANH EM NHÀ GRIMSBY', 'Grimsby (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 1, 1, 1, 2015, 'images/p1.png', 'The Brothers Grimsby (Anh Em Nhà Grimsby) kể về cuộc phối hợp đầy mạo hiểm và các tình tiết vui nhộn của 2 anh em Hooligan nhà Grimsby và đội điệp viên cao cấp', 83, 532, 'Không xác định'),
(4, 'ANIME BORUTO', 'Boruto: Naruto Next Generations (2016)', 'Hoàn tất (84/84) ', 'Không xác định', 'Không xác định', 1, 2, 2, 2016, 'images/p2.png', 'Anime Boruto được chuyển thể từ bộ truyện cùng tên được sáng tác bởi hai tác giả Ukyō Kodachi và Mikie Ikemoto. Bộ truyện lần đầu tiên được ra mắt trên Weekly Shonen Jump vào ngày 9 tháng 5 năm 2016. Nội dung của bộ truyện là phần tiếp theo dựa trên nội dung bộ truyện gốc của Masashi Kishimoto, kể về thời đại của Boruto, con trai của Hokage đệ thất Naruto.', 24, 60157, 'Không xác định'),
(5, 'HỘI PHÁP SƯ FAIRY TAIL', 'Fairy Tail (2017)', 'Tập 286 ', 'Không xác định', 'Không xác định', 1, 2, 3, 2017, 'images/p3.png', 'Câu chuyện về một cô thiếu nữ tên Lucy Heartfilia, khao khát của cô là gia nhập Hội Pháp sư nổi tiếng Fairy Tail. Trên đường phiêu lưu, Lucy đã vô tình gặp gỡ Natsu Salamander Dragneel, một thành viên của Fairy Tail, người sở hữu pháp thuật cổ đại Sát Long. Thế rồi Lucy được Natsu giới thiệu vào Hội Pháp sư Fairy Tail và cùng anh chàng này tham gia vô số nhiệm vụ khó khăn nhưng cũng không kém phần thú vị.', 24, 1436, 'Không xác định'),
(6, 'ĐỘI TRƯỞNG TSUBASA', 'Captain Tsubasa (2018)', 'Tập 35 ', 'Không xác định', 'Không xác định', 8, 2, 4, 2018, 'images/p4.png', 'Thuyền trưởng Tsubasa là câu chuyện đam mê của một học sinh trường tiểu học có những suy nghĩ và ước mơ xoay quanh hầu hết tình yêu bóng đá. Tsubasa Oozora 11 tuổi bắt đầu chơi bóng ở độ tuổi rất trẻ, và trong khi đó nó chỉ là một môn thể thao giải trí cho bạn bè của mình, đối với anh, nó đã phát triển thành một cái gì đó ám ảnh. ', 24, 1857, 'Không xác định'),
(7, 'ĐẤU LA ĐẠI LỤC', 'Dau La Dai Luc (2015)', 'Tập 28 ', 'Không xác định', 'Không xác định', 6, 2, 5, 2015, 'images/p5.png', 'Một đại lục không hề yên bình, một cuộc sống đầy hiểm nguy, phiêu lưu nhưng cũng không kém phần lãng mạn. tình yêu, thù hận, trách nhiệm… Tiếp bước những tiền bối đi trước, Hoắc Vũ Hạo và đời sau sử lai khắc thất quái, bằng niềm tin nhiệt huyết tuổi trẻ đã gây dựng lại đường môn tái lập những huy hoàng xưa kia của các tiền bối đi trước…', 25, 2309, 'Không xác định'),
(8, 'DẠ QUỶ', 'Rampant (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 7, 1, 6, 2016, 'images/p6.png', 'Dạ Quỷ là một câu chuyện về hoàng tử Lee (do Huyn Bin thủ vai) ở triều đại Joseon, người nổi tiếng có võ thuật cao cường. Trở về sau khoảng thời gian dài bị đày ải bởi nhà Thanh (Trung Quốc), Ngài đau lòng chứng kiến cả quê hương chìm trong một đại dịch của những “ác quỷ bóng đêm”. Liệu rằng vị hoàng tử Lee có ngăn được cơn cuồng nộ của đội quân quỷ dữ này và cứu được giang sơn?', 129, 2761, 'Không xác định'),
(9, 'TRỞ VỀ MINH TRIỀU LÀM VƯƠNG GIA', 'Royal Highness (2017)', 'Hoàn tất (40/40) ', 'Không xác định', 'Không xác định', 8, 2, 7, 2017, 'images/p7.png', 'Vào những năm Hoằng Trị (niên hiệu của vua Hiếu Tông thời Minh), tú tài Dương Lăng trong ngày cưới của mình đột nhiên ngã xuống đất không dậy nổi. Mấy ngày sau, Dương Lăng khỏi bệnh, nhìn thấy gia cảnh nghèo khó, đối với người vợ mới Hàn Ấu Nương, Dương Lăng đột nhiên thấy xấu hổ, bèn quyết định bán hết đất vườn, lên kinh đi thi. ', 45, 3213, 'Không xác định'),
(10, 'MỐC 22', 'Mile 22 (2018)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 5, 1, 8, 2018, 'images/p8.png', 'Nhóm đặc biệt Ground Branch nhận được nhiệm vụ phải đưa một tình báo nước ngoài từ Đại sứ quán Mỹ tại Đông Nam Á đến một sân bay để về lại Mỹ - cách đó 22 dặm. Khó khăn ở đây chính là kiện hàng này cũng bị truy đuổi bởi một loạt lực lượng hoạt động trong sáng lẫn tối. ', 94, 3665, 'Không xác định'),
(11, 'ĐẶC VỤ BẤT CHẤP', 'Agent Mr. Chan (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 4, 1, 9, 2015, 'images/p9.png', 'Hào hoa và lịch lãm chẳng kém gì James Bond, Mr.Chan là một điệp viên đẳng cấp hàng đầu. Anh chàng được một nữ cảnh sát ngỏ lời giúp đỡ cô trong một vụ án đầy gian nan. Trong suốt hành trình truy tìm ra câu trả lời, cả hai đã gặp phải vô số những pha đụng độ nguy hiểm nhưng cũng không kém phần hài hước.', 101, 4117, 'Không xác định'),
(12, 'QUÁI VẬT VENOM', 'Venom (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 2, 1, 10, 2016, 'images/p10.png', 'Quái Vật Venom là một kẻ thù nguy hiểm và nặng ký của Người nhện trong loạt series của Marvel. Chàng phóng viên Eddie Brock (do Tom Hardy thủ vai) bí mật theo dõi âm mưu xấu xa của một tổ chức và đã không may mắn khi nhiễm phải loại cộng sinh trùng ngoài hành tinh (Symbiote) và từ đó đã không còn làm chủ bản thân về thể chất lẫn tinh thần. Điều này đã dần biến anh thành quái vật đen tối và nguy hiểm nhất chống lại người Nhện - Venom.', 112, 4569, 'Không xác định'),
(13, 'CÔ TIÊN DỌN DẸP', 'Clean With Passion For Now (2017)', 'Tập 4/16 ', 'Không xác định', 'Không xác định', 2, 2, 1, 2017, 'images/p11.png', 'Jang Sun Gyeol bị hội chứng sợ vi trùng và đang điều hành một công ty dọn dẹp. Anh ta đã gặp Gil O Sol. Đó là một người con gái có tính cách tươi sáng và không ngại vương bụi bẩn. Với sự giúp đỡ của Gil O Sol, Jang Sun Gyeol đã có thể đối mặt với hội chứng của mình và rơi vào lưới tình với Gil O Sol.', 60, 5021, 'Không xác định'),
(14, 'Anh Em Nhà Grimsby', 'Grimsby (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 6, 1, 1, 2015, 'images/p12.png', 'The Brothers Grimsby (Anh Em Nhà Grimsby) kể về cuộc phối hợp đầy mạo hiểm và các tình tiết vui nhộn của 2 anh em Hooligan nhà Grimsby và đội điệp viên cao cấp', 83, 532, 'Không xác định'),
(15, 'NGÔI NHÀ HOA (PHẦN 1)', 'The House of Flowers (Season 1) (2015)', 'Tập 12/13 ', 'Không xác định', 'Không xác định', 1, 2, 3, 2015, 'images/p13.png', 'Ngôi nhà của Hoa là một bộ phim truyền hình hài kịch truyền hình Mexico được tạo ra bởi Manolo Caro. Nó mô tả một gia đình người Mexico cao cấp rối loạn chức năng sở hữu một cửa hàng hoa uy tín. Mùa 13 tập đầu tiên được phát hành vào ngày 10 tháng 8 năm 2018.', 60, 5925, 'Không xác định'),
(16, 'KÊ LONG TIÊN NỮ TRUYỆN', 'Mama Fairy and the Woodcutter / Tale of Gyeryong Fairy(2016)', 'Tập 10/16 ', 'Không xác định', 'Không xác định', 1, 2, 4, 2016, 'images/p14.png', 'Vào thời Goryeo, có một nàng tiên tên là Sun Ok Nam, trong một lần xuống trần gian để tắm trên đỉnh suối nước nóng thì nàng đã bị chàng tiều phu giấu đi bộ quần áo thần tiên của mình khiến cho nàng không thể quay về trời. Sau đó, nàng đã kết hôn với chàng tiều phu và sinh ra 2 đứa con, nhưng trong một lần chồng nàng đã mất vì một tai nạn rơi khỏi vách núi. Sun Ok-Nam đã tiếp tục tìm bộ quần áo của mình nhưng không thể tìm ra, cho nên nàng đã quyết định chờ chồng nàng tái sinh để có thể hỏi vị trí cất giấu quần áo của mình ở đâu.', 60, 6377, 'Không xác định'),
(17, 'THẾ GIỚI PHÉP MÀU', 'Black Clover (2017)', 'Tập 61 ', 'Không xác định', 'Không xác định', 1, 2, 5, 2017, 'images/p15.png', 'Aster và Yuno là hai đứa trẻ bị bỏ rơi ở nhà thờ và cùng nhau lớn lên tại đó. Khi còn nhỏ, chúng đã hứa với nhau xem ai sẽ trở thành Ma pháp vương tiếp theo. Thế nhưng, khi cả hai lớn lên, mọi sô chuyện đã thay đổi. Yuno là thiên tài ma pháp với sức mạnh tuyệt đỉnh trong khi Aster lại không thể sử dụng ma pháp và cố gắng bù đắp bằng thể lực. ', 25, 6829, 'Không xác định'),
(18, 'HÓA RA ANH VẪN Ở ĐÂY (BẢN TRUYỀN HÌNH)', 'Never Gone (2018)', 'Hoàn tất (36/36) ', 'Không xác định', 'Không xác định', 7, 2, 6, 2018, 'images/p16.png', 'Bộ phim Hóa Ra Anh Vẫn Ở Đây (Bản truyền hình) xoay quanh tình yêu trắc trở của Tô Cẩm Vận, một thiếu nữ thôn quê không mấy xuất sắc nhưng tính tình vô cùng thẳng thắn và Trình Tranh, một chàng trai giàu có, gia thế hoành tráng, đẹp trai học giỏi, mọi mặt đều xuất sắc.', 45, 7281, 'Không xác định'),
(19, 'TÌNH ANH EM', 'Race Gurram (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 8, 1, 7, 2015, 'images/p17.png', 'Bộ phim kể về hai anh em Ram (Shaam) và Lucky (Allu Arjun). Ram là một anh chàng chân thành đã lớn lên với ước mơ trở thành một cảnh sát trung thực phục vụ người dân của mình. Lucky lại là một chàng trai hạnh phúc may mắn được hưởng cuộc sống với những niềm vui riêng của anh ấy. ', 163, 7733, 'Không xác định'),
(20, 'SLIME CHUYỂN SINH', 'That Time I Got Reincarnated as a Slime (2016)', 'Tập 10 ', 'Không xác định', 'Không xác định', 9, 2, 8, 2016, 'images/p18.png', 'Câu chuyện bắt đầu với anh chàng Satoru Mikami, một nhân viên 37 tuổi sống cuộc sống chán chường và không vui vẻ gì. Trong một lần gặp cướp, anh đã bị mất mạng. Tưởng chừng cuộc sống chán ngắt ấy đã kết thúc, nhưng không! Ấy lại chính là sự khởi đầu của một cuộc sống mới. Mikami thức dậy, thấy mình đang ở trong một thế giới kì lạ. Và điều quái dị là anh không còn hình dạng người nữa, mà anh đã trở thành quái vật slime dẻo quẹo và không có mắt. Khi dần quen với hình dáng mới này, anh bắt đầu khám phá thế giới cùng với những quái vật khác, và công cuộc thay đổi thế giới mới đã bắt đầu.', 25, 8185, 'Không xác định'),
(21, 'NGŨ NỮ NHẪN GIẢ (PHẦN 2)', 'Senran Kagura 2nd Season (2017)', 'Tập 8 ', 'Không xác định', 'Không xác định', 1, 2, 9, 2017, 'images/p19.png', 'Học viện Hanzo là một ngôi trường danh tiếng, nơi đây ẩn chứa một bí mật mà ít ai được biết. Đằng sau bức tường của ngôi trường ấy là lò luyện nhẫn giả (shinobi) - họ đóng vai trò là gián điệp và là sát thủ dưới trướng của những tướng quân thời xa xưa. Ngày nay, nhẫn giả vẫn được lưu truyền trong học viện Hanzo. Senran Kagura theo chân 5 cô gái và hành trình đầy gian nan của họ nhằm kết thúc khoá học đào tạo nhẫn giả và những đối thủ nguy hiểm mà họ phải đối đầu.', 25, 8637, 'Không xác định'),
(22, 'NHỮNG CÔ NÀNG CHEERLEADER', 'Anima Yell! (2018)', 'Tập 9 ', 'Không xác định', 'Không xác định', 1, 2, 10, 2018, 'images/p20.png', 'Câu chuyện kể về cô bé Kohane Hatoya - một cô nàng thích giúp đỡ người khác. Sau khi cô chuyển cấp từ sơ trung lên cao trung, cô bị hấp dẫn bởi bộ môn cổ vũ, và cô đã bắt đầu hoạt động của mình tại câu lạc bộ cổ vũ tại trường mình. Bên cạnh cô còn có cô bạn thời thơ ấu Uki và senpai giàu kinh nghiệm Hizume.', 24, 9089, 'Không xác định'),
(23, 'ĐẠI TẦN ĐẾ QUỐC 2: CHÍ THIÊN HẠ', 'The Qin Empire 2 (2015)', 'Tập 16/51 ', 'Không xác định', 'Không xác định', 1, 2, 1, 2015, 'images/p21.png', 'Sau khi cải cách Thương Ưởng, nhà Tần bước vào một kỷ nguyên mới. Nhà Tần ngày càng mạnh mẽ hơn và trở thành mối đe dọa cho 6 nước còn lại. Chiến lược của 6 nước Hàn, Ngụy, Triệu, Sở, Tề, Yên là kết minh “Hợp Tung” nhằm chống lại Tần. Huệ Văn Vương, vị vua trẻ nhà Tần đã quyết định trọng dụng chính trị gia tài giỏi Trương Nghi. Trương Nghi hiến kế, lập ra chiến lược “Liên Hoành”, giúp nhà Tần hết lần này tới lần khác phá giải được tình huống nguy hiểm. Trong thời kỳ do mình cai trị, Huệ Văn Vương chủ trương binh nông hợp nhất, về đối ngoại thì thực hiện liên kết để chia rẽ, vì vậy nhà Tần tuy gặp nguy hiểm nhưng khi giao chiến luôn giành được phần thắng.', 45, 9541, 'Không xác định'),
(24, 'TÀO THÁO', 'Beyond The Heaven (2016)', 'Tập 11/26 ', 'Không xác định', 'Không xác định', 1, 2, 2, 2016, 'images/p22.png', '\'Souten Kouro\' là series anime của Nhật Bản năm 2009, được chuyển thể từ manga cùng tên kể về cuộc đời của Tào Tháo của tác giả King Gonta. Manga được phát hành định kỳ trên tạp chí truyện tranh Weekly Morning của Kodansha từ năm 1994 đến năm 2005. Tổng cộng 409 chap truyện đã được phát hành, tập hợp thành 36 vol. Năm 1998, manga giành giải Manga Kodansha lần thứ 22. Phim do studio Madhouse chuyển thể, được đạo diễn bởi Toyoo Ashida và được phát sóng tại Nhật Bản từ tháng 4 đến tháng 9 năm 2009. ', 23, 9993, 'Không xác định'),
(25, 'VỊ VUA TRÁI PHÁP', 'Outlaw King (2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 1, 1, 3, 2017, 'images/p23.png', 'Outlaw King dựa trên sự kiện cuộc chiến giữa Scotland và Anh Quốc, một thiên anh hùng ca về Robert the Bruce - vị vua huyền thoại của Scotlands và cuộc chiến giành lại quyền kiểm soát Scotland sau khi ông bị tuyên bố là một người ngoài vòng pháp luật của Vương quốc Anh vì đã giành vương miện Scotland và tạo ra cuộc nội chiến.', 121, 10445, 'Không xác định'),
(26, 'VƯƠNG TRIỀU CUỐI CÙNG (PHẦN 3)', 'The Last Kingdom (Season 3) (2018)', 'Hoàn tất (10/10) ', 'Không xác định', 'Không xác định', 16, 2, 4, 2018, 'images/p24.png', 'The Last Kingdom kể về câu chuyện của Uhtred vùng Bebbanburg, từ một cậu bé bị chiếm mất quyền thừa kế, lớn lên cùng với người vikings sau đó chiến đấu cho Vua Alfred Đại Đế và con trai của ông, Edward. Đây là câu chuyện về những cái khiên chắn, máu, trả thù và sự trui rèn từ nhiều vương quốc, về một giấc mơ lớn mà vua Alfred gọi là Anh Quốc.', 60, 10897, 'Không xác định'),
(27, 'VƯƠNG TRIỀU CUỐI CÙNG (PHẦN 2)', 'The Last Kingdom (Season 2) (2015)', 'Hoàn tất (8/8) ', 'Không xác định', 'Không xác định', 16, 2, 5, 2015, 'images/p25.png', 'The Last Kingdom kể về câu chuyện của Uhtred vùng Bebbanburg, từ một cậu bé bị chiếm mất quyền thừa kế, lớn lên cùng với người vikings sau đó chiến đấu cho Vua Alfred Đại Đế và con trai của ông, Edward. Đây là câu chuyện về những cái khiên chắn, máu, trả thù và sự trui rèn từ nhiều vương quốc, về một giấc mơ lớn mà vua Alfred gọi là Anh Quốc.', 60, 11349, 'Không xác định'),
(28, 'SIÊU TRỘM HOÀNG CUNG', 'The Grand Heist / Gone With The Wind (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 2, 1, 6, 2016, 'images/p26.png', 'Duk Moo là con trai của một nhà quý tộc, nhưng đồng thời cũng là con của người vợ lẽ. Theo luật và tục lệ vương triều Joseon, Lee Duk Moo không thể có được địa vị trong triều do xuất thân của mẹ', 121, 11801, 'Không xác định'),
(29, 'OAN GIA TÌNH', 'Very Ordinary Couple / Romance\'s Temperature (2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 1, 1, 7, 2017, 'images/p27.png', 'Câu chuyện hài hước về bộ đôi phá rối trong công ty. Với cá tính ương bướng, hai người chẳng ai chịu lép, nghĩ ra đủ trò chọc phá, trả đũa lẫn nhau khiến đối phương phát ghét. Nhưng cuối cùng, cặp đôi oan gia phải lòng nhau từ những điều tưởng như khó chấp nhận đó...', 112, 12253, 'Không xác định'),
(30, 'MÌNH THÍCH NHAU ĐI', 'Like for Likes / Please Like Me (2018)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 2, 1, 8, 2018, 'images/p28.png', 'MÌNH “THÍCH” NHAU ĐI là câu chuyện tình yêu nhẹ nhàng nhưng không kém phần lãng mạn, hài hước của 3 cặp đôi hoàn toàn khác biệt: một nữ đạo diễn phim truyền hình tài năng (Lee Mi-yun) với chàng diễn viên trẻ mà tên tuổi đang “nổi như cồn” trong lòng người hâm mô (Yoo Ah-in); một đầu bếp trung niên tài hoa bị vợ sắp cưới từ hôn (Kim Joo-hyuk) “đụng độ” cô nàng tiếp viên hàng không “dở dở ương ương” (Choi Ji-won); và cậu nhạc sĩ trẻ chuyên sáng tác các ca khúc về tình yêu nhưng chưa bao giờ trải nghiệm (Kang Ha-neul) tình cờ “cảm nắng” cô nàng sản xuất phim truyền hình (Lee Som). ', 120, 12705, 'Không xác định'),
(31, 'KHÔNG KÍCH', 'Air Strike (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 10, 1, 9, 2015, 'images/p29.png', 'Lấy bối cảnh năm 1943 tại Trung Quốc thời Thế Chiến 2, Air Strike kể về cuộc đánh bom của Nhật Bản vào Trùng Khánh. 5 người Trung Quốc khác nhau chiến đấu theo cách của riêng họ xuyên suốt các cuộc tấn công của Không quân Nhật Bản để bảo vệ một cỗ máy quân sự quan trọng ở Trùng Khánh.', 97, 13157, 'Không xác định'),
(32, 'CON TÀU CUỐI CÙNG (PHẦN 5)', 'The Last Ship (Season 5) (2016)', 'Hoàn tất (10/10) ', 'Không xác định', 'Không xác định', 10, 2, 10, 2016, 'images/p30.png', 'The Last Ship phần 5 tiếp tục câu chuyện sau một đại dịch toàn cầu giết chết và làm suy yếu khoảng một nửa dân số thế giới, thủy thủ đoàn (gồm 217 người có cả nam và nữ) trên một tàu khu trục tên lửa dẫn đường của hải quân Mỹ không bị ảnh hưởng. Giờ đây, họ phải cố gắng để tìm cách chữa trị và ngăn chặn vi-rút để cứu nhân loại.', 60, 13609, 'Không xác định'),
(33, 'NHẢY LÊN NÀO!', 'Just Dance / Dance Sports Girls (2017)', 'Hoàn tất (16/16) ', 'Không xác định', 'Không xác định', 4, 2, 1, 2017, 'images/p31.png', 'Geoje, tỉnh Gyeongsang Nam, Hàn Quốc, nơi ngành công nghiệp chính của thành phố là đóng tàu. Ngành đóng tàu đang suy thoái. 6 cô gái học cùng một trường trung học. Họ là thành viên của câu lạc bộ thể thao khiêu vũ tại trường. Mục tiêu của họ là để giành chiến thắng trong cuộc thi thể thao khiêu vũ. Sáu cô gái này là Shi-Eun (Park Se-Wan), Hye Jin (Lee Joo-Young), Na-Young (Joo Hae-Eun), Ye-Ji (Shin Do-Hyun), Do-Yeon (Lee Yoo) -Mi) và Young-Ji (Kim Soo-Hyun).', 60, 14061, 'Không xác định'),
(34, 'NHỮNG CÔ NÀNG CHEERLEADER', 'Anima Yell! (2018)', 'Tập 9 ', 'Không xác định', 'Không xác định', 4, 2, 2, 2018, 'images/p32.png', 'Câu chuyện kể về cô bé Kohane Hatoya - một cô nàng thích giúp đỡ người khác. Sau khi cô chuyển cấp từ sơ trung lên cao trung, cô bị hấp dẫn bởi bộ môn cổ vũ, và cô đã bắt đầu hoạt động của mình tại câu lạc bộ cổ vũ tại trường mình. Bên cạnh cô còn có cô bạn thời thơ ấu Uki và senpai giàu kinh nghiệm Hizume.', 24, 14513, 'Không xác định'),
(35, 'ZOMBIELAND SAGA', 'Zombieland Saga (2015)', 'Tập 9/12 ', 'Không xác định', 'Không xác định', 4, 2, 3, 2015, 'images/p33.png', 'Zombieland Saga – Cuộc sống an bình hàng ngày với âm nhạc của 7 cô gái đã bất ngờ bị phá hủy bởi bàn tay của những Zombie. Bảy cô gái bị kéo vào thế giới Zombie đầy kinh dị và họ chỉ ước rằng mình được sống. Liệu phép màu có xảy ra hay họ sẽ bị xé nhỏ thành từng mảnh?', 24, 14965, 'Không xác định'),
(36, 'TIẾNG HÁT VANG DỘI BẦU TRỜI', 'Fukumenkei Noise (2016)', 'Hoàn tất (12/12) ', 'Không xác định', 'Không xác định', 4, 2, 4, 2016, 'images/p34.png', 'Cô nàng yêu ca hát Nino Arisugawa đã trải qua một cuộc chia tay buồn với người bạn yêu quý Momo sau khi cậu chuyển nhà. Một thời gian sau, Nino kết bạn với Yuzu, một nhà soạn nhạc, nhưng họ cũng sớm phải rời xa nhau. Âm nhạc là mối liên kết duy nhất giữa họ. Cả hai người con trai hứa với Nino rằng họ sẽ tìm ra cô nhờ giọng hát của cô. Nino vẫn ôm ấp hi vọng đó, và luôn nỗ lực để đưa giọng hát của mình đến mọi người. Khi lên cao trung, Nino may mắn hội ngộ với Yuzu, nhưng cô cũng rất mong gặp lại Momo lần nữa...', 24, 15417, 'Không xác định'),
(37, 'NHÓM NHẠC CỦA NHỮNG ƯỚC MƠ', 'BanG Dream! (2017)', 'Tập 12/13 ', 'Không xác định', 'Không xác định', 4, 2, 5, 2017, 'images/p35.png', 'Khi còn nhỏ, trái tim Kasumi Toyama luôn đập loạn nhịp mỗi khi ngước nhìn lên những ngôi sao, và cô nàng luôn tìm kiếm một điều gì đó có thể mang lại cảm giác giống như thế, nhưng tìm mãi vẫn không ra. Một ngày, cô tình cờ thấy một chiếc đàn guitar hình ngôi sao trong cửa hiệu cầm đồ, và đó là lần đầu tiên Kasumi thấy được cảm xúc mà cô vẫn hằng tìm kiếm. Từ lúc đó, Kasumi quyết tâm thành lập một ban nhạc nữ, và cô đã gặp gỡ được 4 cô nàng cùng chung chí hướng: Saya, Arisa, Rimi, và Tae. Liệu ban nhạc nữ này sẽ đạt được ước mơ siêu sao của mình không?', 24, 15869, 'Không xác định'),
(38, 'HOÀNG TỬ HÀO HOA', 'Charming (2018)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 4, 1, 6, 2018, 'images/p36.png', 'Charming - Hoàng Tử Hào Hoa mang đến cho khán giả một câu chuyện mới, một góc nhìn cực kỳ thú vị, sáng tạo và chưa bao giờ được kể của ba cô gái xinh đẹp trong xứ sở thần tiên nổi tiếng: Bạch Tuyết, Lọ Lem và Công Chúa Ngủ Trong Rừng. Một ngày nọ cả ba khám phá ra rằng những vị hôn phu mà các cô đính hôn thật ra đều là cùng một người đó là Hoàng Tử Charming. Bên cạnh đó còn có hàng triệu cô gái trong vương quốc thầm thương trộm nhớ muốn trở thành vợ của Hoàng Tử.', 90, 16321, 'Không xác định'),
(39, 'DỰ ÁN PQ', 'Poppin Q (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 4, 1, 7, 2015, 'images/p37.png', 'Câu chuyện bắt đầu một ngày trước khi lễ tốt nghiệp. Năm cô gái trung học mỗi bận tâm với cuộc sống hàng ngày thực sự của họ. Những cô gái gặp nhau trong một thế giới tưởng tượng sau khi được gửi ở đó thông qua một sự xuất hiện đột ngột. Ở đó, họ tìm hiểu về cuộc khủng hoảng sắp xảy ra rằng thế giới này đang phải đối mặt. Các cách để ngăn chặn cuộc khủng hoảng này là cho năm hợp tác và mang lại lăm trái tim của họ với nhau như một thông qua khiêu vũ. Tuy nhiên, năm không thể đi đến tình yêu trên thế giới, và không thể nói cảm xúc thật của họ với nhau, vì vậy trái tim của họ không thể đoàn kết. Thời hạn đang đến rất nhanh. điệu nhảy của năm cô gái có thể cứu thế giới? Và họ sẽ có thể tốt nghiệp?', 95, 16773, 'Không xác định'),
(40, 'NHỮNG CÔ NÀNG ÂM NHẠC', 'Music Girls (2016)', 'Tập 2/12 ', 'Không xác định', 'Không xác định', 4, 2, 8, 2016, 'images/p38.png', 'Bộ anime dựa trên anime ngắn do studio DEEN sản xuất trong dự án Anime Mirai 2015. Câu chuyện kể về cô bé Hanako Yamadaki và cuộc gặp gỡ định mệnh của cô với nhóm idol Ongaku Shoujo - một nhóm nhạc nhỏ bé, vô danh gồm 11 thành viên. Nhà sản xuất Ikehashi nghĩ rằng nhóm cần một thành viên mới. Thế là cô bé Hanako đã gia nhập vào showbiz như thế. Cùng với nhau, nhóm nhạc Ongaku Shoujo nỗ lực từng ngày để gặt hái thành công trong thế giới âm nhạc.', 24, 17225, 'Không xác định'),
(41, 'BÓNG RỔ VŨ TRỤ', 'Basquash! (2017)', 'Hoàn tất (26/26) ', 'Không xác định', 'Không xác định', 4, 2, 9, 2017, 'images/p39.jpg', 'Cô ấy là bạn thời thơ ấu của Dan và Coco. Cô cũng là một người thợ Big Foot. ', 24, 17677, 'Không xác định'),
(42, 'BẬC THẦY CẦU LÔNG', 'The Badminton play of Ayano Hanesaki (2018)', 'Tập 13 ', 'Không xác định', 'Không xác định', 4, 2, 10, 2018, 'images/p40.png', 'Một người chơi BFB luẩn quẩn với một bao phủ quá khứ những người nắm giữ một mối thù với Dan. Kỹ năng chụp lâu rồi, anh đánh bại kẻ thù của mình bằng cách ném quả bóng về phía họ với tốc độ nghiền. Ông đeo kính và có đôi mắt màu đỏ sẫm. Chơi trò chơi man rợ của mình trái ngược với tính cách bao la của mình ra khỏi Big Foots, là một người mát mẻ và lịch sự ', 24, 18129, 'Không xác định'),
(43, 'NGÔI NHÀ HOA (PHẦN 1)', 'The House of Flowers (Season 1) (2015)', 'Tập 12/13 ', 'Không xác định', 'Không xác định', 5, 2, 1, 2015, 'images/p41.png', 'Ngôi nhà của Hoa là một bộ phim truyền hình hài kịch truyền hình Mexico được tạo ra bởi Manolo Caro. Nó mô tả một gia đình người Mexico cao cấp rối loạn chức năng sở hữu một cửa hàng hoa uy tín. Mùa 13 tập đầu tiên được phát hành vào ngày 10 tháng 8 năm 2018.', 60, 18581, 'Không xác định'),
(44, 'DAE JANG GEUM ĐANG DÕI THEO', 'Dae Jang-Geum Is Watching (2016)', 'Tập 8 ', 'Không xác định', 'Không xác định', 5, 2, 2, 2016, 'images/p42.png', 'Bộ phim kể về cuộc sống của hai anh em và một em gái là hậu duệ của Dae Jang Geum. Họ đều là những người đam mê ẩm thực. San Hae là anh cả và có một vị giác tuyệt vời. Anh ta làm việc cho một công ty và có dây dưa với một nhân viên mới là Bok Seung A. Jin Mi là chị thứ hai và có thính giác tuyệt diệu. Jung Sik là em út và có kỹ năng nấu nướng xuất sắc. Anh ta là một vlogger trên YouTube.', 60, 19033, 'Không xác định'),
(45, 'SỔ TAY LÀM BẢO MẪU CỦA TÔI', 'Hi! I\'m Saori (2017)', 'Tập 24/40 ', 'Không xác định', 'Không xác định', 5, 2, 3, 2017, 'images/p43.png', 'Thiếu nữ Saori đánh bại tất cả, giành được chức nghiệp bảo mẫu của ngôi sao nổi tiếng Tô Đạt Hạo, giúp đỡ Tô Đạt Hạo duy trì danh tiếng, sau thời gian chung đụng, Tô Đạt Hạo dần dần nảy sinh tình cảm với cô...', 45, 19485, 'Không xác định'),
(46, 'NHÓC TRÙM: ĐI LÀM LẠI (PHẦN 2)', 'The Boss Baby: Back in Business (Season 2) (2018)', 'Tập 2/13 ', 'Không xác định', 'Không xác định', 5, 2, 4, 2018, 'images/p44.png', 'Nhóc Trùm: Đi Làm Lại Phần 2 tiếp tục những câu chuyện thú vị, đáng yêu về Nhóc Trùm và đồng bọn, Nhóc Trùm cố gắng cân bằng cuộc sống gia đình với công việc của mình tại trụ sở của Baby Corp.', 25, 19937, 'Không xác định'),
(47, 'HACHIKO: CHÚ CHÓ TRUNG THÀNH', 'Hachiko: A Dog\'s Story (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 5, 1, 5, 2015, 'images/p45.png', 'Hachi là một chú chó nhỏ được gửi sang Mĩ bằng đường tàu hỏa, nhưng khi xuống tàu thì người ta làm rơi mất lồng nhốt cậu và cậu bị lạc. Tại đây, cậu gặp Parker Wilson - một giáo sư đại học đang đi bộ về nhà. Parket đưa Hachi về nhà, Cate Wilson - vợ ông ban đầu không thích sự có mặt của chú chó nhỏ nên đã bảo Parker đăng tin tìm chủ của chú. Nhưng khi thấy Parker trở nên thân thiết với Hachi, Cate đã từ bỏ ý định tìm chủ của Hachi, và Hachi trở thành một thành viên trong gia đình Wilson. ', 93, 20389, 'Không xác định'),
(48, 'NHÓC TRÙM: ĐI LÀM LẠI (PHẦN 1)', 'The Boss Baby: Back in Business (Season 1) (2016)', 'Hoàn tất (13/13) ', 'Không xác định', 'Không xác định', 5, 2, 6, 2016, 'images/p46.png', 'Với sự trợ giúp từ anh trai và đồng bọn của mình, Nhóc Trùm cố gắng cân bằng cuộc sống gia đình với công việc của mình tại trụ sở của Baby Corp.', 25, 20841, 'Không xác định'),
(49, 'CUỘC PHIÊU LƯU CỦA GEORGE VÀ GERALD', 'Mouse Story: The Adventures of George and Gerald(2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 5, 1, 7, 2017, 'images/p47.jpg', 'Gerald - một chú chuột mạnh mẽ và đáng tin cậy. George - một chú chuột đối xử tốt với bạn bè mình những lại vội vã và đãng trí. Hai chú chuột George và Gerald đã có một bài kiểm tra xem ai là người đầu tiên bắt được Rồng Ánh sáng, người chiến thắng sẽ trở thành thủ lĩnh của đại gia đình chuột. Một chú chuột không thích thế giới bên ngoài và một chú chuột ao ước một lần được ra bên ngoài sẽ cùng nhau phiêu lưu để đến được Thung lũng Mặt trăng và bắt Rồng Ánh sáng.', 52, 21293, 'Không xác định'),
(50, 'HARRY POTTER VÀ HÒN ĐÁ PHÙ THỦY', 'Harry Potter 1: Harry Potter and the Sorcerer\'s Stone(2018)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 5, 1, 8, 2018, 'images/p48.png', 'Harry Potter và Hòn Đá Phù Thủy là bộ phim đầu tiên trong series phim “Harry Potter” được xây dựng dựa trên tiểu thuyết của nhà văn J.K.Rowling. Nhân vật chính của phim, Harry Potter - một cậu bé 11 tuổi sau khi mồ côi cha mẹ đã bị gửi đến nhà dì dượng của mình, gia đình Dursley. Tuy nhiên, cậu bé bị ngược đãi và không hề biết về thân phận thực sự của mình. ', 152, 21745, 'Không xác định'),
(51, 'YÊU THIỆT MÀ MẸ HỔNG ƯNG', 'Ruk Tae Mae Mai Pleum (2015)', 'Hoàn tất (55/55) ', 'Không xác định', 'Không xác định', 5, 2, 9, 2015, 'images/p49.png', 'Yêu Thiệt Mà Mẹ Hổng Ưng: Khi Tình yêu không phải là chiếc giường trải đầy hoa hồng bởi vì... nó bị phá hỏng bởi chính mẹ chồng của bạn. Pat (Jes) và Pan (Mo) yêu nhau đã được năm năm, cuối cùng họ quyết định kết thúc cuộc tình đẹp của mình bằng một hôn lễ đáng yêu. Sau khi kết hôn, Pat và Pan chuyển về nhà mẹ của Pat (Sinjai) sống. Nhưng Pan lại không ngờ rằng rắc rối bắt đầu đến từ đây. Vì quá yêu thương con trai của mình, nên mẹ của Pat không muốn chia sẻ anh với con dâu, từ đó trong gia đình thường xuyên xảy ra những trận cải vã giữa mẹ chồng và nàng dâu. ', 25, 22197, 'Không xác định'),
(52, 'CHÚ CHÓ ROBOT', 'A-X-L (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 5, 1, 10, 2016, 'images/p50.png', 'Trong một lần đi chơi, Miles - cậu thanh niên có niềm đam mê với máy móc và tốc độ phát hiện ra một chú chó máy quân sự được tạo ra với chức năng tấn công những vị trí mà phương tiện cơ giới không thể đến mang tên A-X-L. ', 98, 22649, 'Không xác định'),
(53, 'NGẠ QUỶ TOKYO (PHẦN 3)', 'Tokyo Ghoul: re (Season 3) (2017)', 'Tập 21/24 ', 'Không xác định', 'Không xác định', 6, 2, 1, 2017, 'images/p51.png', 'okyo Ghoul: re là phần 3 của bộ anime Tokyo Ghoul do Sui Ishida sáng tác. Tokyo Ghoul: re vẫn xoay quanh cuộc chiến giữa con người (tiêu biểu là CCG) với quỷ ăn thịt (Ghoul - tiêu biểu là Aogiri) nhưng khác với phần trước, cuộc chiến được nhìn nhận dưới con mắt của con người (các thanh tra) thay vì quỷ ăn thịt (ở Anteiku\'s Coffee) như series đầu', 24, 23101, 'Không xác định'),
(54, 'THẾ GIỚI PHÉP MÀU', 'Black Clover (2017\\8)', 'Tập 61 ', 'Không xác định', 'Không xác định', 6, 2, 2, 2018, 'images/p52.png', 'Aster và Yuno là hai đứa trẻ bị bỏ rơi ở nhà thờ và cùng nhau lớn lên tại đó. Khi còn nhỏ, chúng đã hứa với nhau xem ai sẽ trở thành Ma pháp vương tiếp theo. Thế nhưng, khi cả hai lớn lên, mọi sô chuyện đã thay đổi. Yuno là thiên tài ma pháp với sức mạnh tuyệt đỉnh trong khi Aster lại không thể sử dụng ma pháp và cố gắng bù đắp bằng thể lực', 25, 23553, 'Không xác định'),
(55, 'MOBILE SUIT GUNDAM NT', 'Mobile Suit Gundam Narrative (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 6, 1, 3, 2015, 'images/p53.png', 'U.C. 0097, một năm sau khi mở Hộp Laplace. Bất chấp sự mặc khải của Hiến chương Thế kỷ thừa nhận sự tồn tại và quyền của Newtypes, khuôn khổ của thế giới đã không bị thay đổi nhiều. Cuộc xung đột sau này được gọi là Sự cố Laplace được cho là đã kết thúc với sự sụp đổ của những tàn tích Neo Zeon được gọi là Áo. Trong trận chiến cuối cùng của nó, hai bộ đồ di động khung hình đầy đủ tâm lý thể hiện sức mạnh vượt ra khỏi sự hiểu biết của con người. Con lân trắng và con sư tử đen bị phong ấn để loại bỏ nguy hiểm này khỏi tâm thức của mọi người, và bây giờ họ sẽ hoàn toàn bị lãng quên. Tuy nhiên, RX-0 Unicorn Gundam 03, đã biến mất hai năm trước đó, bây giờ sắp xuất hiện trong Earth Sphere một lần nữa. Một phoenix vàng ... tên là Phenex', 90, 24005, 'Không xác định'),
(56, 'CUỘC SĂN VÀNG KHẮC NGHIỆT', 'Golden Kamuy (2016)', 'Tập 21 ', 'Không xác định', 'Không xác định', 6, 2, 4, 2016, 'images/p54.png', 'Vào đầu thế kỉ 20, cựu chiến binh Saichi Sugimoto Bất tử xuất thân từ cuộc chiến Nga-Nhật hiện đang trải qua những thời điểm khó khăn trong suốt những cuộc đào vàng hậu chiến ở vùng Hokkaido hoang vu. Khi anh biết đến vùng đất xa xôi nơi ẩn giấu kho tàng Ainu bí ẩn, anh quyết định dấn thân vào cuộc hành trình đầy hiểm nguy để tìm kiếm nó. Nhưng Sugimoto không phải là người duy nhất thích thú với kho vàng này, bất cứ ai biết về Ainu đều sẵn sàng chém giết nhau để giành được nó. Đối mặt với cuộc sống khó khăn tại vùng hoang sơ phía Bắc, những tên tội phạm đáng gờm và những tên lính Nhật đểu cáng, để sống sót, Sugimoto sẽ cần phải vận dụng mọi kĩ năng và sự may mắn của mình - cùng với sự trợ giúp của cô gái người Ainu tên là Asirpa', 23, 24457, 'Không xác định'),
(57, 'YÊU THẦN KÝ', 'Tales Of Demons And Gods (2017)', 'Tập 103 ', 'Không xác định', 'Không xác định', 6, 2, 5, 2017, 'images/p55.png', 'Yêu Thần Ký : Yêu Thần Vừa Xuất, Ai Dám Tranh Phong. Yêu Linh Sư Mạnh Nhất Thánh Linh Đại Lục Nhiếp Li, bởi vì một cuốn sách thần bí Yêu Linh Thời Không mà trở về năm 13 tuổi, tu luyện mạnh nhất công pháp, mạnh nhất yêu linh chi lực, đột phá tới võ đạo đỉnh phong..', 10, 24909, 'Không xác định'),
(58, 'HỌC VIỆN TINH HẢI', 'Charlotte (2018)', 'Hoàn tất (13/13) ', 'Không xác định', 'Không xác định', 6, 2, 6, 2018, 'images/p56.png', 'Câu chuyện xoay quanh một khả năng đặc biệt chỉ xuất hiện ở vài phần trăm chàng trai và cô gái ở tuổi dậy thì. Yuu Otosaka sử dụng năng lực đó và sống một cuộc sống bình thường cho đến khi Nao Tomori xuất hiện. Định mệnh của những người có năng lực đặc biệt như cậu dần được hé lộ.', 25, 25361, 'Không xác định'),
(59, 'SLIME CHUYỂN SINH', 'That Time I Got Reincarnated as a Slime (2015)', 'Tập 10 ', 'Không xác định', 'Không xác định', 6, 2, 7, 2015, 'images/p57.png', 'Câu chuyện bắt đầu với anh chàng Satoru Mikami, một nhân viên 37 tuổi sống cuộc sống chán chường và không vui vẻ gì. Trong một lần gặp cướp, anh đã bị mất mạng. Tưởng chừng cuộc sống chán ngắt ấy đã kết thúc, nhưng không! Ấy lại chính là sự khởi đầu của một cuộc sống mới. Mikami thức dậy, thấy mình đang ở trong một thế giới kì lạ. Và điều quái dị là anh không còn hình dạng người nữa, mà anh đã trở thành quái vật slime dẻo quẹo và không có mắt. Khi dần quen với hình dáng mới này, anh bắt đầu khám phá thế giới cùng với những quái vật khác, và công cuộc thay đổi thế giới mới đã bắt đầu.', 25, 25813, 'Không xác định'),
(60, 'MONSTER STRIKE 3', 'Monster Strike: The Fading Cosmos (2016)', 'Tập 12/13 ', 'Không xác định', 'Không xác định', 6, 2, 8, 2016, 'images/p58.png', 'Monster Strike là anime dựa trên một tựa game cùng tên ăn khách tại Nhật Bản được ra mắt chính thức trong năm 2013 . Đây là phần 3 Series này . Nội dung kể về những ngày đếm ngược đến tận thế của thế giới con người lẫn thế giới của Monster . Liệu Ren và các bạn sẽ ngăn chặn được chứ ?', 10, 26265, 'Không xác định'),
(61, 'NGŨ NỮ NHẪN GIẢ (PHẦN 2)', 'Senran Kagura 2nd Season (2017)', 'Tập 8 ', 'Không xác định', 'Không xác định', 6, 2, 9, 2017, 'images/p59.png', 'Học viện Hanzo là một ngôi trường danh tiếng, nơi đây ẩn chứa một bí mật mà ít ai được biết. Đằng sau bức tường của ngôi trường ấy là lò luyện nhẫn giả (shinobi) - họ đóng vai trò là gián điệp và là sát thủ dưới trướng của những tướng quân thời xa xưa. Ngày nay, nhẫn giả vẫn được lưu truyền trong học viện Hanzo. Senran Kagura theo chân 5 cô gái và hành trình đầy gian nan của họ nhằm kết thúc khoá học đào tạo nhẫn giả và những đối thủ nguy hiểm mà họ phải đối đầu.', 25, 26717, 'Không xác định'),
(62, 'BIỆT ĐỘI ĐIỆP VIÊN', 'Release The Spyce (2018)', 'Tập 9 ', 'Không xác định', 'Không xác định', 6, 2, 10, 2018, 'images/p60.png', 'Bộ anime xoay quanh cô bé Momo - một nữ sinh cao trung tại thành phố Sorasaki. Nhưng đấy chỉ là vỏ bọc của cô thôi. Đằng sau thân phận học sinh, Momo chính là một điệp viên của cục tình báo Tsukikage - nơi bảo vệ thành phố và người dân. Dưới sự dẫn dắt của cấp trên Yuki và những người bạn của mình, họ cùng nhau duy trì trật tự hòa bình của thành phố này. Câu chuyện sẽ theo chân cuộc hành trình của 6 cô gái dũng cảm.', 24, 27169, 'Không xác định'),
(63, 'TẾ CÔNG HÀNG YÊU 2: THẦN LONG TÁI XUẤT', 'The Incredible Monk 2: Dragon Return (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 7, 1, 1, 2015, 'images/p61.png', 'Tế Công và các liên minh anh hùng, lại một lần nữa hóa giải thảm họa của nhân gian, phàm là không gian đều không thể nhận được an toàn, tranh chấp, chiến tranh vẫn không ngừng. Tướng quân Cao Nhân Kiệt chính là danh tiếng triều đình, đã tham gia nhiều trận lớn nhỏ và giành nhiều chiến thắng, lập được không ít công lao hiển hách, trở thành người anh hùng dân tộc', 88, 27621, 'Không xác định'),
(64, 'ĐƯỜNG THI TAM BÁCH ÁN', 'The Untold Stories Of Tang Dynasty (2016)', 'Tập 20/30 ', 'Không xác định', 'Không xác định', 7, 2, 2, 2016, 'images/p62.jpg', 'Vào thời khai nguyên của Lý Đường, tin đồn Võ hậu chuyển thế nổi lên khắp nơi, tàn trang Thôi Bối Đồ tái hiện ở nhân gian ý chỉ rằng mảnh tàn trang Thôi Bối Đồ thứ 61 tiên đoán Võ hậu sắp chuyển thế, nhất định sẽ cướp đoạt giang sơn của Lý Đường. Lời đồn trực tiếp hướng về phía Ngọc quý phi đang được sủng ái nhất trong hậu cung nói cô ta chính là Võ hậu chuyển thế, đồng thời các thế lực trong triều thay đổi kịch liệt, án mạng liên tiếp xảy ra', 45, 28073, 'Không xác định'),
(65, 'TÂN TÂY DU KÝ (PHẦN 1)', 'The New Legends of Monkey (Season 1) (2017)', 'Hoàn tất (10/10) ', 'Không xác định', 'Không xác định', 7, 2, 3, 2017, 'images/p63.png', 'Phim The New Legends of Monkey (Tân Tây Du Ký) lấy cảm hứng từ cuộc hành trình truyền thuyết Trung Hoa từ thế kỷ 16, kể về một cô gái và ba vị thần sa ngã trên hành trình nguy hiểm khi họ cố gắng chấm dứt một sự thống trị ma quỷ và khôi phục lại sự cân bằng cho thế giới.', 24, 28525, 'Không xác định'),
(66, 'TẾ CÔNG HÀNG YÊU', 'The Incredible Monk (2018)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 7, 1, 4, 2018, 'images/p64.png', 'Yêu quái đại bàng từ địa ngục lên trần gian cùng đồng bọn tác oai tác quái. Nhằm ngăn chặn tai họa, Tế Công xin với Ngọc Đế phái thêm 5 vị tiên nữa cùng ông hàng yêu phục ma. Nào ngờ, Ngọc Đế lại bất cẩm khiến họ rơi vào tính huống dở khóc dở cười vì xuống trần mà mất đi pháp thuật và ký ức thần tiên.', 95, 28977, 'Không xác định'),
(67, 'TẬP YÊU PHÁP HẢI TRUYỆN', 'Fa Hai (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 7, 2, 5, 2015, 'images/p65.png', 'Thời kì hưng thịnh, yêu quái hoành hành, triều đình lập ra tổ chức “Tập Yêu Ti” chuyên lùng bắt yêu quái, từng thành viên đều phải uống máu yêu, để chống lại yêu ma. Nhưng nếu không thể giữ được tấm lòng trong sạch như nước, thì sẽ bị máu yêu phản phệ, hóa thành bán yêu.', 94, 29429, 'Không xác định'),
(68, 'PHONG THẦN CHIẾN KỈ', 'The War Records of Deification (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 7, 1, 6, 2016, 'images/p66.png', 'Khương Thượng sống những ngày vô tư lự, đi khắp nơi giả danh lừa bịp. Nhưng khi sư phụ triệu về thực hiện nhiệm vụ Phong Thần, anh phải đối mặt với thân phận Lữ Vọng của mình – một Lữ Vọng luôn khắc khoải mối thù diệt tộc, nhưng vẫn mong mỗi tạo lập một thế giới không giết chóc, tai ương, nô lệ, con người sống hoà bình với nhau', 93, 29881, 'Không xác định'),
(69, 'KHÁCH TRỌ PHÒNG 1006', 'Meet Me @ 1006 (2017)', 'Hoàn tất (26/26) ', 'Không xác định', 'Không xác định', 7, 2, 7, 2017, 'images/p67.png', 'Kha Chấn Vũ - một luật sư kiêu ngạo với thành tích bất bại trong các vụ kiện, trong vụ án mạng giết HLV Judo, Kha Chấn Vũ bị cấu kết hãm hại, bị công tố viên Mộ Tư Minh khởi tố tội ngụy tạo bằng chứng khiến thân bại danh liệt. Trong tình trạng bơ vơ, anh chuyển tới một căn hộ thần bí, mỗi tối vào lúc 10h06\' trong nhà sẽ xuất hiện một vị khách nữ, cô gái ấy là người hay là ....?', 45, 30333, 'Không xác định'),
(70, 'THIÊN KÊ CHI BẠCH XÀ TRUYỀN THUYẾT', 'The Destiny of White Snake (2018)', 'Hoàn tất (60/60) ', 'Không xác định', 'Không xác định', 7, 2, 8, 2018, 'images/p68.png', 'Dược sư Hứa Tuyên và sư muội Lãnh Ngưng hành y cứu người, trog buổi lễ hoa đào tình cờ gặp gỡ Bạch Yêu Yêu. Trải qua nhiều gian truân cách trở, Hứa Tuyên và Bạch Yêu Yêu cuối cùng cũng trở thành phu thê. Tuy nhiên, vì cứu Hứa Tuyên, Bạch Yêu Yêu đã trộm tiên thảo, vi phạm thiên quy. ', 45, 30785, 'Không xác định'),
(71, 'KẾT ÁI: MỐI TÌNH ĐẦU CỦA ĐẠI NHÂN THIÊN TUẾ', 'The Love Knot: His Excellency\'s First Love (2015)', 'Tập 25/30 ', 'Không xác định', 'Không xác định', 7, 2, 9, 2015, 'images/p69.png', 'Bộ phim xoay quanh mối quan hệ giữa cô phóng viên thực tập Quan Bì Bì và chuyên gia nghiên cứu văn hóa Hạ Lan Tịnh Đình. Ban đầu, Quan Bì Bì xin được phỏng vấn Hạ Lan Tịnh Đình, song liên tục bị anh từ chối.', 25, 31237, 'Không xác định'),
(72, 'PHƯỢNG TÙ HOÀNG', 'Untouchable Lovers (2016)', 'Hoàn tất (54/54) ', 'Không xác định', 'Không xác định', 7, 2, 10, 2016, 'images/p70.png', 'Thiên Cơ Các - một tổ chức hàng đầu muốn lật đổ vị vua đang cai trị thời nhà Lưu Tống là Lưu Tử Nghiệp. Để thực hiện âm mưu, Thiên Cơ Các đã âm thầm thay thế chị gái của Lưu Tử Nghiệp là Sơn Âm công chúa Lưu Sở Ngọc bằng một người giống hệt. Dưới thân phận của Sở Ngọc, cô đã gặp gián điệp của Bắc Ngụy là Dung Chỉ. Trải qua nhiều khó khăn và hiểu lầm, cuối cùng Sở Ngọc và Dung Chỉ cũng nhận ra được tình cảm thật sự. Dung Chỉ sau đó đã giả chết để mong Sở Ngọc tha thứ. Nhưng mọi chuyện vẫn chưa dừng lại ở đó khi cả hai cùng mất đi trí nhớ, mỗi người lưu lạc một nơi. Sau 5 năm, cả hai gặp lại nhau khi Sở Ngọc được chọn gả cho Hoàng tử Bắc Ngụy, người đó không ai khác chính là Dung Chỉ.', 45, 31689, 'Không xác định'),
(73, 'NGƯỜI SỬA CHỮA', 'The Healer (2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 8, 2, 1, 2017, 'images/p71.png', 'Alec Bailey là một tay chơi cờ bạc, một thợ sửa chữa điện đã phá sản, người vẫn bị tổn thương bởi cái chết của người anh trai sinh đôi mình, Charlie. Không một xu dính túi và lâm vào cảnh nợ nần chồng chất, đột nhiên anh được người chú bị mất liên lạc lâu năm Richard Heacock chấp nhận giải quyết các khoản nợ nần của Alec với một điều kiện: Rời khỏi Anh và chuyển đến sống tại Halifax, Nova Scotia, Canada trong vòng 1 năm.', 113, 32141, 'Không xác định'),
(74, 'ƯỚC MƠ NHỎ THÔI (PHẦN 2)', 'Tamayura: More Aggressive (2018)', 'Hoàn tất (12/12) ', 'Không xác định', 'Không xác định', 8, 2, 2, 2018, 'images/p72.png', 'Tamayura More Aggressive phần tiếp theo của Tamayura: Hitotose anime nhẹ nhàng về tình bạn. Kanae , một nữ sinh trung học năm ba, một cô nàng nhút nhát và đam mê nhiếp ảnh, Kanae đã gia nhập Club Nhiếp ảnh của trường cùng với bạn mình là Potte. Cuộc sống của một nhiếp ảnh tập sự bắt đầu.', 24, 32593, 'Không xác định'),
(75, 'ƯỚC MƠ NHỎ THÔI (PHẦN 1)', 'Tamayura: Hitotose (2015)', 'Hoàn tất (12/12) ', 'Không xác định', 'Không xác định', 8, 2, 3, 2015, 'images/p73.png', 'Câu chuyện xoay quanh Fu Sawatari, một cô gái sống tại một thị trấn ven vùng biển nội địa Seto và đi chụp ảnh với chiếc máy ảnh sử dụng phim của người cha quá cố. Một ngày kia Fu gặp được Kaoru, Norie và Maon, và họ đã trở thành bạn thân của nhau.', 24, 33045, 'Không xác định'),
(76, 'CÔ BÉ THÔI MIÊN', 'Molly Moon and the Incredible Book of Hypnotism (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 8, 1, 4, 2016, 'images/p74.png', 'Trại trẻ mồ côi tồi tàn nằm gọn trong một trang viên đổ nát lãnh lẽo “Hardwick House” được điều hành bởi cô hiệu trưởng quái gở và luôn bị ám ảnh bởi luật lệ “Quý cô” Adderstone; đây là nơi bắt đầu câu chuyện phép thuật của cô bé Molly Moon. ', 98, 33497, 'Không xác định'),
(77, 'CHARLIE VÀ NHÀ MÁY SÔCÔLA', 'Charlie and the Chocolate Factory (2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 8, 1, 5, 2017, 'images/p75.png', 'Willi Wonka là một người sản xuất chocolate nổi tiếng nhất thế giới, mở một cuộc thi mà người thắng giải sẽ được vào tham quan nhà máy sản xuất chocolate của mình. Nhà nghèo, cậu bé Charlie Bucket phải sớm lao động để giúp đỡ gia đình ao ước được ăn thật nhiều kẹo, em tham gia trò chơi may mắn của Willy Wonka, ông chủ nhà máy chocolate tuyệt diệu nhất thế giới. ', 115, 57890, 'Không xác định'),
(78, 'TOM & JERRY: WILLY WONKA VÀ NHÀ MÁY CHOCOLATE', 'Tom and Jerry: Willy Wonka and the Chocolate Factory(2018)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 8, 1, 6, 2018, 'images/p76.png', 'Tom và Jerry sẽ giúp Charlie Bucket đạt được một chiếc vé Vàng và bí mật đi cùng anh ta vào nhà máy sô cô la của Willy Wonka để ngăn chặn một trong những đối thủ của Wonka trộm cắp một viên kẹo đặc biệt gọi là Gobstopper Everlasting.', 79, 33987, 'Không xác định'),
(79, 'CHỈ CÓ THỂ HÌNH DUNG', 'I Can Only Imagine (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 8, 3, 7, 2015, 'images/p77.png', 'Bộ phim dựa trên câu chuyện đằng sau ca khúc của ban nhạc MercyMe, I Can Only Imagine trở thành ca khúc Christian được chơi nhiều nhất mọi thời đại. Bộ phim xoay quanh ca sĩ chính của MercyMe, Bart Millard, và mối quan hệ của anh với cha mình, người đã mất khi anh 18 tuổi và ông là nguồn cảm hứng để anh sáng tác nên bài hát này. Theo giám đốc Andrew Erwin, nó nói lên một câu chuyện cha-con phức tạp.', 110, 34853, 'Không xác định'),
(80, 'CÀ CHUA BI', 'Cherry Tomato (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 8, 3, 8, 2016, 'images/p78.png', 'Park Gu mưu sinh bằng nghề nhặt ve chai để cừng đứa cháu gái sống qua ngày. Tình cảnh của họ ngày càng tồi tệ hơn. Từ khi đứa con trai của ông ấy trở về và đã lấy đi số tiền mà ông ấy dành dụm mấy lâu và rồi chiếc xe ba gác của ông bị bọn côn đồ phá hỏng. Đó là phương tiện duy nhất giúp ông kiếm tiền. Ông ấy quyết định tới tìm người quản lý công trường. Nhưng không may, vì đứa cháu gái quá đói nên ông đành phải ăn cắp đồ ăn đứa bé. Không may đó là đồ ăn chó đã bị người giúp việc của quản lý công trường bỏ độc vì mối căm ghét của cô ta với ông chủ.', 102, 35150, 'Không xác định'),
(81, 'LIÊN MINH MÀU MÈ', 'Mitsuboshi Colors (2017)', 'Hoàn tất (12/12) ', 'Không xác định', 'Không xác định', 8, 2, 9, 2017, 'images/p79.png', 'Hai cô gái trung học, một lùn và dễ tức giận - Popuko, và Pipimi - cao lớn và bình tĩnh hơn, những chuyện tào lao bắt đầu.', 23, 35757, 'Không xác định'),
(82, 'VUA KHỈ TÁI XUẤT 2', 'Kong: King of the Apes 2 (2018)', 'Hoàn tất (10/10) ', 'Không xác định', 'Không xác định', 8, 2, 10, 2018, 'images/p80.png', 'Vua Khỉ Tái Xuất Phần 2 Vua Của Loài Khỉ được cứu bởi một cậu bé nhỏ Lucas khi dạo chơi trong rừng. Lucas và gia đình của cậu bé nuôi dưỡng Kong nhưng người anh song sinh của Lucas trở nên ganh ghét và cố gắng loại trừ Kong.', 25, 36209, 'Không xác định'),
(83, 'KIẾM TAM ', 'Jian Wang 3 - Xia Gan Yi Dan Shen Jian Xin (2015)', 'Tập 12 ', 'Không xác định', 'Không xác định', 9, 2, 1, 2015, 'images/p81.png', 'Thẩm Kiếm Tâm là một bảo an ở thôn Đạo Hương, bình bình tầm thường lập chí trở thành đại hiệp. Sau khi bái nhập đại phái giang hồ – Thuần Dương cung, lại ma xui quỷ khiến lĩnh hội được tuyệt thế bí tịch tổ truyền của Thuần Dương cung. Nhưng hắn lại không chút cảm kích tuyệt học mình lĩnh ngộ được. Vì thế bước vào giang hồ, từ từ trưởng thành, hiểu biết những mưa gió giang hồ ở Đại Đường thịnh thế. Một tiểu nhân vật có được tuyệt thế võ công, lại sẽ gây nên sóng gió thế nào ở chốn giang hồ?', 21, 36661, 'Không xác định'),
(84, 'TOÀN CHỨC PHÁP SƯ (PHẦN 3)', 'Full-Time Magister 3 (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 9, 3, 2, 2016, 'images/p82.png', 'Mở mắt tỉnh giấc, thế giới đại biến. Một trường cấp 3 quen thuộc giảng dạy Ma pháp, cổ vũ các học sinh phải trở thành Ma pháp sư xuất sắc. Bên ngoài đô thị, lũ yêu ma quỷ quái đăng chằm chằm nhìn loài người như hổ đói, chực chờ tấn công. Thế giới vốn tôn sùng khoa học giờ đây tôn sùng Ma pháp... Mạc Phàm phát hiện hầu hết mọi người chỉ học được một hệ ma thuật, nhưng cậu lại là một pháp sư toàn năng...', 19, 60115, 'Không xác định'),
(85, 'ĐẤU LA ĐẠI LỤC', 'Dau La Dai Luc (2017)', 'Tập 28 ', 'Không xác định', 'Không xác định', 9, 2, 3, 2017, 'images/p83.png', 'Một đại lục không hề yên bình, một cuộc sống đầy hiểm nguy, phiêu lưu nhưng cũng không kém phần lãng mạn. tình yêu, thù hận, trách nhiệm… Tiếp bước những tiền bối đi trước, Hoắc Vũ Hạo và đời sau sử lai khắc thất quái, bằng niềm tin nhiệt huyết tuổi trẻ đã gây dựng lại đường môn tái lập những huy hoàng xưa kia của các tiền bối đi trước…', 25, 37565, 'Không xác định'),
(86, 'SONG NHÂN TRỪ ĐẠO', 'Banana Fish (2018)', 'Tập 21 ', 'Không xác định', 'Không xác định', 9, 2, 4, 2018, 'images/p84.png', 'Banana Fish kể về cuộc gặp gỡ định mệnh giữa chàng trai người Mỹ Ash Lynx và cậu chàng thợ chụp ảnh người Nhật trong sáng Eiji Okamura. Tại thành phố New York năm 80, thiếu niên đẹp trai Ash Lynx được một ông trùm tội phạm khét tiếng “Papa” Dino Golzine nhận nuôi từ nhỏ, nuôi dưỡng cậu trở thành tay sai cũng như một món đồ chơi tình dục của ông ta. ', 23, 38017, 'Không xác định'),
(87, 'CÂU LẠC BỘ CRYSTAL RADIO', 'The Girl in Twilight (2015)', 'Tập 9 ', 'Không xác định', 'Không xác định', 9, 2, 5, 2015, 'images/p85.png', 'Tháng 10 năm 2018, những cô gái sống tại một thành phố nhỏ đã thực hiện một nghi thức đặc biệt. Họ là những cô nàng đến từ câu lạc bộ Crystal Radio - một câu lạc bộ thú vị, nơi cô nàng Asuka Tsuchimiya dành những ngày tháng vui tươi bên bạn bè mình. Nghi thức họ thực hiện chỉ đơn thuần là một tin đồn truyền miệng thôi... Thế nhưng khi các cô gái lần lượt gặp phải những hiện tượng kì bí, mọi chuyện không còn là một trò vui như lúc đầu họ tưởng...', 24, 38469, 'Không xác định'),
(88, 'BẮC ĐẦU THẦN QUYỀN: REGENESIS', 'Souten no Ken Re: Genesis (2016)', 'Tập 21/24 ', 'Không xác định', 'Không xác định', 9, 2, 6, 2016, 'images/p86.png', 'Ngay trước chiến tranh thế giới thứ 2, Kasumi Kenshiro thuê một giáo sư khá im lăng và hay đãng trí để dạy văn học cho một trường cao đằng nữ sinh nhỏ ở Tokyo. Từng là tông sư đời thứ 62 của Hokuto Shinken Thần quyền của sao phương Bắc và có được Yan Wang là danh hiệu Vua cái chết và người gìn giữ hòa bình ở thành phố ác quỷ. Lả một đấu sĩ của các tên lưu manh và những tên buôn lậu heroin, Kasumi chỉ muốn một cuộc sống bình yên cho đến khi người yêu của anh mất và các anh em, Kasumi buộc phải quay trở lại Thượng Hải để làm tròn số mệnh của mình và trả thù cho những người cậu yêu thương Bắc đầu thẩn quyền', 22, 38921, 'Không xác định'),
(89, 'DẠ QUỶ', 'Rampant (2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 9, 3, 7, 2017, 'images/p87.png', 'Dạ Quỷ là một câu chuyện về hoàng tử Lee (do Huyn Bin thủ vai) ở triều đại Joseon, người nổi tiếng có võ thuật cao cường. Trở về sau khoảng thời gian dài bị đày ải bởi nhà Thanh (Trung Quốc), Ngài đau lòng chứng kiến cả quê hương chìm trong một đại dịch của những “ác quỷ bóng đêm”. Liệu rằng vị hoàng tử Lee có ngăn được cơn cuồng nộ của đội quân quỷ dữ này và cứu được giang sơn?', 129, 39373, 'Không xác định'),
(90, 'HỌA GIANG HỒ CHI BẤT LƯƠNG NHÂN (PHẦN 3)', 'Hoa Giang Ho Chi Bat Luong Nhan 3 (2018)', 'Tập 7 ', 'Không xác định', 'Không xác định', 9, 2, 8, 2018, 'images/p88.png', 'Họa Giang Hồ Chi Bất Lương Nhân (Phần 3)', 20, 39825, 'Không xác định');
INSERT INTO `film` (`id`, `name`, `name2`, `status`, `director`, `actor`, `category_id`, `type_movie`, `nation_id`, `year`, `image`, `description`, `duration`, `num_view`, `author`) VALUES
(91, 'TINH THẦN BIẾN', 'Stellar Transformation (2015)', 'Tập 10/12 ', 'Không xác định', 'Không xác định', 9, 2, 9, 2015, 'images/p89.png', 'Tinh Thần Biến là một tiểu thuyết võ hiệp có nội dung về một câu Truyện Tiên Hiệp hoành tráng kể về người thanh niên Tần Vũ gian khổ tu luyện, vượt hết khó khăn này đến nguy hiểm khác để lên Thần Giới tìm người yêu.', 24, 40277, 'Không xác định'),
(92, 'SIÊU NHÂN KAMEN RIDER ZI-O', 'Kamen Rider Zi-O (2016)', 'Tập 23 ', 'Không xác định', 'Không xác định', 9, 2, 10, 2016, 'images/p90.png', 'Mùa thu năm 2018, một cô gái cùng cỗ máy thời gian xuất hiện trước mặt nhân vật chính của chúng ta, Tokiwa Sougo sinh vào năm 2000 mà cô gái được báo mộng sẽ trở thành Vua. Cô gái bí ẩn xuất hiện từ cỗ máy thời gian nói với main rằng: Tôi đến từ năm 2068. Trong tương lai, thế giới sẽ do Ma Vương thống trị, khiến loài người lầm than, tạo nên một thế giới vô vọng. Cô gái tới năm 2018 với hi vọng thay đổi thế giới tương lai đầy tuyệt vọng mà cô nói. Trong tương lai, cậu sẽ trở thành Zi-O, vị vua thời gian, và cũng là ma vương hủy diệt thế giới.', 25, 40729, 'Không xác định'),
(93, 'ANH EM PHI HÀNH GIA', 'Space Brothers (2017)', 'Tập 28 ', 'Không xác định', 'Không xác định', 10, 2, 1, 2017, 'images/p91.png', 'Vào một đêm hè 2006, khi còn là hai chú bé, hai anh em Mutta (1993) và Hibito (1996) đã nhìn thấy một vật thể lạ bay tới mặt trăng. Họ đã quyết định trong đêm đó rằng tương lai sẽ trở thành những phi hành gia bay vào vũ trụ. Năm 2025, Hibito đã trở thành một phi hành gia và chuẩn bị bay lên mặt trăng. Mutta thì còn là một kỹ sư thông thường ở một công ty ô tô. Tuy nhiên, sau một pha bao lực với sếp mình, sự nghiệp của anh đã đi toong. Mất việc, bị đưa vào sổ đen của toàn bộ ngành công nghiệp thế nhưng có lẽ đây lại là cơ hội để Mutta một lần nữa theo đuổi giấc mơ thời thơ bé của mình...', 24, 41181, 'Không xác định'),
(94, 'ĐẢO HẢI TẶC', 'One Piece (2018)', 'Tập 863 ', 'Không xác định', 'Không xác định', 10, 2, 2, 2018, 'images/p92.png', 'Phim Đảo Hải Tặc - One Piece là chuyện về cậu bé Monkey D. Luffy do ăn nhầm Trái Ác Quỷ, bị biến thành người cao su và sẽ không bao giờ biết bơi. 10 năm sau sự việc đó, cậu rời quê mình và kiếm đủ 10 thành viên để thành một băng hải tặc, biệt hiệu Hải tặc Mũ Rơm. ', 24, 41633, 'Không xác định'),
(95, 'SỨ MỆNH NGUY HIỂM', 'Serenity (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 10, 3, 3, 2015, 'images/p93.png', 'Bộ phim được làm dựa trên kịch bản chuyển thể từ một phim truyền hình tên là Firefly. Phim kể về cuộc phiêu lưu trong không gian của những người điều hành con tàu Serenity gồm thuyền trưởng Malcolm và các nhân viên là Zoe, Wash, Kaylee và Jayne. Khi Malcolm đồng ý chở 2 vị khách là vị bác sĩ trẻ Simon cùng với người chị có tinh thần bất ổn River thì những rắc rối bắt đầu xảy ra.', 119, 42085, 'Không xác định'),
(96, 'NHIỆM VỤ BẤT KHẢ THI: SỤP ĐỔ', 'Mission: Impossible - Fallout (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 10, 3, 4, 2016, 'images/p94.png', 'Ba năm sau Mission: Impossible – Rogue Nation, chàng đặc vụ điển trai và hào hoa bậc nhất trên màn ảnh rộng Ethan Hunt sẽ tái xuất màn bạc trong mùa hè 2018. ', 147, 42537, 'Không xác định'),
(97, 'LINH KHẾ', 'Spiritpact (2017)', 'Hoàn tất (32/32) ', 'Không xác định', 'Không xác định', 10, 2, 5, 2017, 'images/p95.png', 'Linh khiết là bộ phim xoay quanh nhân vật chính Dương Kính – Một chàng trai được sinh ra trong gia đình nổi tiếng về trừ tà. Tuy nhiên sau khi cha mẹ mất sớm, thì sự nghiệp trừ tà của gia đình cũng trở nên mai một. Dương Kính phải lăn lộn đủ nghề để kiếm sống. Một đêm nọ, Dương Kính gặp gỡ một pháp sư thần bí là Dương Minh Tư chiến đấu với một hồn quỷ. Cuộc gặp gỡ này đã thay đổi cuộc sống của Dương Kính, sau khi gặp gỡ anh chàng pháp sư thần bí kia, Dương Kính bị tai nạn xe và cuối cùng trở thành một linh thể….', 13, 42989, 'Không xác định'),
(98, 'DŨNG GIẢ ĐẠI MẠO HIỂM: HOÀNG TUYỀN THỦ KÝ', 'Dung Gia Dai Mao Hiem (2018)', 'Hoàn tất (51/51) ', 'Không xác định', 'Không xác định', 10, 2, 6, 2018, 'images/p96.png', 'Chuyện xoay quanh nhân vật chính An Nham, đơn giản là một sinh viên năm 4 an phận thủ thường, một ngày đẹp trời gặp phải zombie trên xe khách, rồi một anh đẹp trai ngời ngời tới diệt quái như quay movie. Rồi cái xe đâm xuống vực và cả An Nham lẫn cái anh đẹp trai kia đều chết rất thảm, được TV đưa tin. Nhưng ngày hôm sau họ vẫn sống sờ sờ, và ko có gì cho thấy họ là ma cả. ', 12, 43441, 'Không xác định'),
(99, 'CUỘC PHIÊU LƯU CỦA GEORGE VÀ GERALD', 'Mouse Story: The Adventures of George and Gerald(2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 10, 3, 7, 2015, 'images/p97.png', 'Gerald - một chú chuột mạnh mẽ và đáng tin cậy. George - một chú chuột đối xử tốt với bạn bè mình những lại vội vã và đãng trí. Hai chú chuột George và Gerald đã có một bài kiểm tra xem ai là người đầu tiên bắt được Rồng Ánh sáng, người chiến thắng sẽ trở thành thủ lĩnh của đại gia đình chuột. Một chú chuột không thích thế giới bên ngoài và một chú chuột ao ước một lần được ra bên ngoài sẽ cùng nhau phiêu lưu để đến được Thung lũng Mặt trăng và bắt Rồng Ánh sáng.', 52, 43893, 'Không xác định'),
(100, 'ALICE VÀ ÔNG LÃO ZOUROKU', 'Alice to Zouroku (2016)', 'Hoàn tất (12/12) ', 'Không xác định', 'Không xác định', 10, 2, 8, 2016, 'images/p98.png', 'Bạn đã nghe qua về năng lực thần bí Giấc mơ Alice chưa? Đó là khả năng biến suy nghĩ của mình thành hiện thực đấy. Đây là năng lực mà một nhóm những cô bé đang sở hữu. Nhưng đáng thương thay, những cô bé này đều bị giam giữ trong bí mật và trở thành vật thí nghiệm. Cho đến ngày kia, một bé đã tìm cách trốn thoát khỏi cái nhà tù này. Cô chính là Sana - người có năng lực phản vật lý cực kì khủng. Và khi cô nàng bướng bỉnh này đụng độ ông lão Zouroku, cuộc sống ngăn nắp, trật tự, thoải mái của ông đã bị đổ vỡ hoàn toàn.', 24, 62789, 'Không xác định'),
(101, 'HARRY POTTER VÀ HÒN ĐÁ PHÙ THỦY', 'Harry Potter 1: Harry Potter and the Sorcerer\'s Stone(2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 10, 3, 9, 2017, 'images/p99.png', 'Harry Potter và Hòn Đá Phù Thủy là bộ phim đầu tiên trong series phim “Harry Potter” được xây dựng dựa trên tiểu thuyết của nhà văn J.K.Rowling. Nhân vật chính của phim, Harry Potter - một cậu bé 11 tuổi sau khi mồ côi cha mẹ đã bị gửi đến nhà dì dượng của mình, gia đình Dursley. Tuy nhiên, cậu bé bị ngược đãi và không hề biết về thân phận thực sự của mình. ', 152, 44150, 'Không xác định'),
(102, 'CHÚ CHÓ ROBOT', 'A-X-L (2018)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 10, 1, 10, 2018, 'images/p100.png', 'Trong một lần đi chơi, Miles - cậu thanh niên có niềm đam mê với máy móc và tốc độ phát hiện ra một chú chó máy quân sự được tạo ra với chức năng tấn công những vị trí mà phương tiện cơ giới không thể đến mang tên A-X-L.', 98, 63146, 'Không xác định'),
(103, 'MÀN SƯƠNG CHẾT', 'Just A Breath Away (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 11, 3, 1, 2015, 'images/p101.png', 'Không được báo trước, một trận động đất vô cùng lớn tấn công Paris, cả thành phố sau đó bị bao phủ bởi một lớp sương mù dày đặc. Màn sương chết ấy đang lần lượt cướp đi tính mạng của rất nhiều những người dân nơi đây. ', 89, 45701, 'Không xác định'),
(104, 'THANH TRỪ QUỶ DỮ', 'Chrono Crusade (2016)', 'Hoàn tất (24/24) ', 'Không xác định', 'Không xác định', 11, 2, 2, 2016, 'images/p102.png', 'Năm 1920, một năm đầy biến động của xã hội. Đó là khoảng thời gian mà phụ nữ được ăn chơi tự do, thoải mái cho dù chính phủ đã ngăn cấm. Đối với tầng lớp thượng lưu, họ phát hiện ra một sự dư thừa xã hội: quỷ dữ. Một tổ chức đặc biệt được thành lập từ thế kỷ trước, Order of Magdalene. Đứng đầu tổ chức là cha Remington và sơ Kate cùng lực lượng là teenrambo(nghĩa đen đấy) được tạo ra với trọng trách nặng nề, “thay chúa hành đạo”, chống lại cái ác bằng... súng máy. Trong khi Rosette và Chrono chiến đấu vì Order of Magdalene thì có 1 con quỷ khủng hơn Chrono đang chờ đợi, sẵn sàng tiêu diệt không chỉ riêng Order of Magdalene mà là tất cả tạo hóa!!', 24, 57890, 'Không xác định'),
(105, 'VƯƠNG QUỐC PHÙ THỦY', 'Jester The Adventurer (2017)', 'Hoàn tất (26/26) ', 'Không xác định', 'Không xác định', 11, 2, 3, 2017, 'images/p103.png', 'Gokudo - Vương Quốc Phù Thủy , nội dung bắt đầu khi Gokudou đánh cắp một chiếc túi từ một thầy bói , nghĩ rằng nó có chứa một viên ngọc . Thay vào đó , nó quay ra được một tảng đá , từ đó xuất hiện Djinn . Các vị thần cấp Gokudou ba mong muốn tiêu chuẩn, nhưng anti -hero của chúng tôi không nghĩ nhiều về mong muốn của mình. Gokudou không nhận được mong muốn của mình, mặc dù không chính xác trong thời trang mà anh mong đợi. Điều tốt nhất mà ông nhận ra mong muốn của mình là người mạnh nhất trong vương quốc Honou chứ không phải Maken , một thanh kiếm huyền diệu cho phép chủ sở hữu của mình để làm lửa tấn công và nó có thể được triệu tập từ bất cứ nơi nào trên thế giới .', 24, 46605, 'Không xác định'),
(106, 'GUNDAM BUILD FIGHTERS TRY', 'Gundam Build Fighters Try (2018)', 'Hoàn tất (25/25) ', 'Không xác định', 'Không xác định', 11, 2, 4, 2018, 'images/p104.png', 'Đã 7 năm đã trôi qua kể từ ngày Sei Iori giành giải vô địch Gunpla Battle lần thứ 7. Giải đấu Gunpla Battle được quản lí bởi công ty thương mại Yajima. Với quy định và phương thức chiến đấu mới, Gunpla ngày càng trở nên phổ biến hơn trên thế giới. Tuy nhiên, Học viện Seiho đã cho rằng Sei Iori đã từng tham gia đã thất bại trong việc nắm bắt xu hướng phát triển. Thành viên duy nhất trong Câu lạc bộ Gunpla Battle của nhà trường là hội trưởng, học sinh trung học Fumina Hoshino. Hiện nay để tham gia vào giải đấu Gunpla Battle Championship, người chơi phải ở trong một đội gồm ba thành viên mới được phép tham gia.', 25, 47057, 'Không xác định'),
(107, 'HÀNH TINH HUYỀN BÍ', 'Gun x Sword (2015)', 'Hoàn tất (26/26) ', 'Không xác định', 'Không xác định', 11, 2, 5, 2015, 'images/p105.png', 'Gun X Sword :Hành tinh Endless Illusion huyền bí nằm đâu đó trong vũ trụ, là thiên đường cho bọn cướp, là địa ngục với những người tốt. Trên hành tinh đó, Van - người sở hữu một trong những Armor mạnh nhất - đang trên đường đi tìm kẻ thù của mình. Trong chuyến đi, anh đã gặp được những người bạn đồng hành như: Wendy, Carmen 99... Mỗi nơi Van đi qua, đều có dấu vết của kẻ thù, mỗi nơi hé lộ ra một bí ẩn... Nhưng đằng sau những bí ẩn đó là một âm mưu khủng khiếp ngụy trang bằng một bộ mặt nhân hậu...', 25, 47509, 'Không xác định'),
(108, 'CHRISTOPHER ROBIN', 'Christopher Robin (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 11, 3, 6, 2016, 'images/p106.png', 'Christopher Robin là một tác phẩm live-action ấm áp về tình cảm gia đình của hãng phim Disney. Bộ phim xoay quanh chuyến phiêu lưu trở lại tuổi thơ cùng những người bạn thuở nhỏ đầy thân thuộc bao gồm Pooh, Tigger, Eeyore và Piglet ở Rừng Trăm Mẫu. ', 104, 47961, 'Không xác định'),
(109, 'BẠN MA PHIỀN TOÁI', 'The Soul-Mate / Wonderful Ghost (2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 11, 3, 7, 2017, 'images/p107.png', 'Jang-su (Ma Dong-seok) và Tae-jin (Kim Young-kwang) sở hữu cá tính hoàn toàn đối lập. Là một võ sư nổi tiếng, nhưng Jang-soo lại tỏ ra ích kỷ và chẳng bao giờ chịu giúp đỡ người hoạn nạn. Tất cả những gì anh quan tâm chỉ là lo lắng chữa trị căn bệnh tim bẩm sinh cho cô con gái nhỏ Do-kyung (Choi Yoo-ri).', 97, 48413, 'Không xác định'),
(110, 'YU-GI-OH! VRAINS', 'Yu-Gi-Oh! VRAINS (2018)', 'Tập 75 ', 'Không xác định', 'Không xác định', 11, 2, 8, 2018, 'images/p108.png', 'Thành phố Den, nơi hệ thống mạng lưới vô cùng phát triển. Tập đoàn Công Nghệ SOL khổng lồ đặt trụ sở tại đó và bằng kĩ thuật công nghệ tiên tiến của mình, nó đã xây dựng một không gian thực tế ảo khổng lồ gọi là LINK VRAINS. Rất nhiều người đã vô cùng phấn khích khi biết rằng họ có thể trải nghiệm một không gian chơi bài hoàn toàn mới. Một tổ chức hacker có tên gọi Kỵ Binh Hanoi đã đột nhập vào mạng lưới này. Mục đích của họ là phá hủy Thế Giới của AI: Cyverse tồn tại nơi nào đó trong mạng lưới.', 25, 48865, 'Không xác định'),
(111, 'CHỜ NGÀY LỜI HỨA NỞ HOA', 'Maquia: When the Promised Flower Blooms (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 11, 3, 9, 2015, 'images/p109.png', 'Phim lấy bối cảnh thơ mộng của vùng đất huyền diệu nơi tộc người Lorph “trường sinh bất lão” sinh sống, tộc người Lorph sẽ mãi mãi không già, hình dáng của họ ngưng lại ở độ tuổi thiếu niên, họ được gọi với cái tên huyền thoại sống – “Clan of Partings”. Sau một cuộc xâm lăng, cô bé Maquia bị lạc vào vùng đất của con người và bắt gặp một đứa trẻ mồ côi. Từ đó cô quyết định sẽ nuôi nấng em bé mà cô đặt tên là Ariel này bất kể những khó khăn và định kiến của xã hội.', 115, 49317, 'Không xác định'),
(112, 'CHÂN NHỎ, BẠN Ở ĐÂU?', 'Smallfoot (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 11, 3, 10, 2016, 'images/p110.png', 'Sau lần chạm trán với Percy, một sinh vật với đôi chân bé nhỏ, người tuyết Migo quyết tâm thực hiện chuyến phiêu lưu của mình đến vùng đất xa xôi để chứng minh với cộng đồng của mình rằng Chân Nhỏ là có thật. Liệu Chân Nhỏ có thật sự đáng sợ như họ đã nghĩ? Hãy cùng Migo đi tìm sinh vật huyền bí này vào tháng 9 nhé!', 96, 55123, 'Không xác định'),
(113, 'LỮ ĐOÀN SÓI', 'Illang: The Wolf Brigade (2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 9, 3, 1, 2017, 'images/p111.png', 'Phim lấy bối cảnh tương lai, xoay quanh quyết định thống nhất Nam - Bắc Hàn sau bảy năm đàm phán. Để phản đối việc sáp nhập, những phần tử khủng bố liên kết thành tổ chức lớn, liên tục nổi dậy, ngăn chặn và chống phá. Trước sự hỗn loạn, chính phủ lập lực lượng cảnh sát đặc biệt nhằm đối phó với các phần tử quá khích.', 139, 50221, 'Không xác định'),
(114, 'CHIẾN BINH OTOME', 'My Otome (2018)', 'Hoàn tất (26/26) ', 'Không xác định', 'Không xác định', 5, 3, 2, 2018, 'images/p112.png', 'Trên hành tinh Earl này, sức mạnh quân sự của các quốc gia phụ thuộc vào bao nhiêu Otome mà họ có, và sức mạnh của mỗi Otome này. Những Otome là những nữ chiến binh sử dụng phép thuật, sẽ phục vụ cho người đứng đầu vương quốc. Otome có một GEM đeo như bông tai bên trái, còn chủ nhân của Otome sẽ có một GEM tương tự trên một chiếc nhẫn. Sức mạnh của những Otome chỉ được giải phóng khi chủ nhân cho phép; ngoại trừ Five Columns là những Otome mạnh nhất, họ không cần chủ nhân và phục vụ cho học viện Garderobe, hoạt động như một lực lượng bảo vệ luật pháp và giúp đỡ những Otome khác. ', 24, 50673, 'Không xác định'),
(115, 'MẬT NGỮ DIỆT VONG', 'Doomsday Book (2015)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 7, 3, 3, 2015, 'images/p113.png', 'Doomsday Book là tuyển tập các điều kinh khủng nhất mà bạn có thể tưởng trong ngày tận thế: mưa thiên thạch rơi vào trái đất, virus biến nhân loại thành những thây ma, những con robot với cái nhìn huyền bí hoặc những điều kinh dị mà bạn từng biết...', 113, 51125, 'Không xác định'),
(116, 'TRƯỚC NGÀY HỦY DIỆT NHÂN LOẠI', 'Before We Vanish / Strolling Invader (20167)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 11, 3, 4, 2016, 'images/p114.png', 'Cuộc hôn nhân của Narumi Kase (Masami Nagasawa) và Shinji Kase (Ryuhei Matsuda) đã đến bờ vực rạn nứt. Một ngày nọ, Shinji Kase đột ngột mất tích. Vài ngày sau, anh xuất hiện nhưng có vẻ như đã trở thành một người hoàn toàn khác. Shinji bây giờ tử tế, ngây ngô và dịu dàng hơn trước. Và ngày nào anh ta cũng ra ngoài đi dạo. ', 129, 51577, 'Không xác định'),
(117, 'MỘT VÀ HAI', 'One and Two (2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 6, 3, 5, 2017, 'images/p115.png', 'Zac và Eva sống cùng bố mẹ trong trang trại bí ẩn, được bao quanh bởi một bức tường đồ sộ. Gia đình họ sống và làm việc theo lối những năm 1800 xưa cũ. Khi mẹ của hai anh em bị bệnh nặng, họ khám phá ra những bí mật đen tối ẩn khuất của gia đình và sức mạnh siêu nhiên dịch chuyển tức thời của họ. Tất cả chúng đe dọa sự bình yên của gia đình. “One and Two” là câu chuyện về mối quan hệ khắn khít và yêu thương giữa hai anh em nói riêng và giữa các thành viên trong gia đình nói chung.', 90, 52029, 'Không xác định'),
(118, 'SIÊU NHÂN MÙ (PHẦN 3)', 'Daredevil (Season 3) (2018)', 'Hoàn tất (13/13) ', 'Không xác định', 'Không xác định', 2, 2, 6, 2018, 'images/p116.png', 'Daredevil mùa 3 tiếp tục theo chân chàng luật sư khiếm thị Matt Murdock (Charlie Cox), ban ngày anh đấu tranh cho người nghèo ở khu Hell’s Kitchen, nhưng khi màn đêm buông xuống thì anh là Daredevil – siêu anh hùng đường phố dùng vũ lực để đưa kẻ xấu ra ánh sáng và thực hiện những nhiệm vụ mà các siêu anh hùng như Iron Man (Robert Downey Jr.) và Captain America (Chris Evans) không có thời gian để quan tâm đến.', 54, 52481, 'Không xác định'),
(119, 'TIA CHỚP ĐEN (PHẦN 1)', 'Black Lightning (Season 1) (2015)', 'Hoàn tất (13/13) ', 'Không xác định', 'Không xác định', 11, 2, 7, 2015, 'images/p117.png', 'Một siêu anh hùng đã về hưu trở thành người bảo vệ công lý. Black Lightning là siêu anh hùng có khả năng có khả năng tạo ra và phóng các tia điện, mặc dù không ai biết được những tia điện này mạnh cỡ nào nhưng nó đủ để làm choáng và thậm chí giết người.', 60, 52933, 'Không xác định'),
(120, 'EUREKA SEVEN THE MOVIE', 'Eureka Seven The Movie (2016)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 6, 1, 8, 2016, 'images/p118.png', 'Movie của bộ Eureka Seven.', 115, 53385, 'Không xác định'),
(121, 'EUREKA SEVEN AO', 'Eureka Seven Astral Ocean (2017)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 6, 3, 9, 2017, 'images/p119.png', 'Là sequel của anime nổi tiếng Eureka Seven chiếu năm 2005. Câu chuyện lần này lấy bổi cảnh là đảo Iwado của Okinawa, trong thời gian gần đây bỗng nổi lên 1 phong trào đòi quyền tự trị. Nhân vật chính Ao Fukai sống cùng 1 ông bác sĩ già tên Toshio, cha cậu không rõ đã đi đâu còn mẹ cậu đã bị bắt cóc bởi 1 nhóm người lạ mặt 10 năm về trước. Cậu chơi thân với Naru Arata, 1 cô bạn chứa trong mình 1 sức mạnh có tên “yuta”. Một ngày, 1 thực thể bí ẩn tên “Secret” bỗng dưng xuất hiện và tấn công đảo, bắt buộc Ao phải lái Nirvash để phản công..', 24, 53837, 'Không xác định'),
(122, 'NÀNG THƠ CỦA QUỶ ', 'Muse (2018)', 'Hoàn tất ', 'Không xác định', 'Không xác định', 11, 3, 10, 2018, 'images/p120.png', 'Muse (Nàng Thơ Của Quỷ) được chuyển thể từ quyển tiểu thuyết rùng rợn The Lady Number Thirteencủa cây bút nổi tiếng José Carlos Somoza. Chuyện phim theo chân vị giáo sư văn học Samuel Salomon(Elliot Cowan đóng). Sau cái chết đầy bi kịch đẫm máu của người bạn gái, ông quyết định gác lại công việc. Trong suốt một năm đó, ông thường xuyên gặp phải ác mộng, Sumuel thường xuyên mơ thấy một nhóm người bí ẩn hành hình theo một nghi lễ chết chóc.', 107, 54289, 'Không xác định'),
(123, 'GLASS : BỘ BA QUÁI NHÂN', 'Glass : Monster trio (2019)', 'Hoàn tất', 'M. Night Shyamalan', 'Không xác định', 14, 3, 1, 2019, 'images/p121.jpg', 'Glass là lần thứ ba trong bộ trilogy, sau bộ phim siêu anh hùng tăm tối chính kịch Unbreakable và phim giật gân – kinh dị tâm lý Split. Dù diễn ra trong cùng một vũ trụ, cả hai phim trước đó có cốt truyện riêng biệt. Với phần phim Glass lần này, chúng ta cũng không cần phải xem lại hai phần phim trước. Nhưng nếu nghiền ngẫm kỹ, bạn sẽ hiểu rõ câu chuyện hơn và thấy được những chi tiết kết nối thú vị mà đạo diễn đã gieo rắc xuyên suốt bộ ba tác phẩm.', 120, 50123, 'Không xác định'),
(124, 'TRẠNG QUỲNH', 'Trạng Quỳnh (2019)', 'Hoàn tất', 'Đức Thịnh', 'Không xác định', 2, 3, 2, 2019, 'images/p122.jpg', 'Bộ phim điện ảnh hài Tết: Trạng Quỳnh có nội dung quay nói quanh nói quẩn hành trình giải cứu nhân vật thầy Đoàn, đồng thời cũng là cha Điềm. Câu chuyện sảy ra đầy gian truân nặng nhọc nhưng cũng nhiều tiếng cười của những loài người bé bỏng trong xã hội phong kiến dù luôn bị chèn ép bởi phân khúc quan lại bất công.', 120, 51221, 'Không xác định'),
(125, 'ĐỪNG NÓI VỚI AI', 'Tell no One (2019)', 'Hoàn tất', 'Harlan Coben', 'Không xác định', 8, 3, 3, 2019, 'images/p123.jpeg', 'TELL NO ONE : Bác sĩ Alex Beck vẫn còn suy sụp sau cái chết của vợ mình 8 năm về trước. Một hôm anh nhận được một email nặc danh, trong đó đường dẫn (link) đến một video trực tiếp. Anh nhận ra khuôn mặt quen thuộc giữa đám đông trong đoạn video, đó chính là Margot, vợ của anh. Có phải cô còn sống? Và tại sao cô lại bảo anh đừng nói cho ai biết?', 120, 52110, 'Không xác định'),
(126, 'ĐỨA CON CỦA THỜI TIẾT', 'The child of the weather (2019)', 'Hoàn tất', 'Shinkai Makoto', 'Không xác định', 6, 3, 4, 2019, 'images/p124.jpg', 'Cũng như Your Name, ĐỨA CON CỦA THỜI TIẾT tiếp tục đan cài giữa truyền thống và hiện đại, huyền thoại và thực tế, nguy cơ và mộng ước, thiên tai và con người… nhưng có điểm khác là, lần đầu tiên hạnh phúc cá nhân đã được nhấn mạnh, nhân vật đã bứt mình khỏi tâm thế bao la vì mọi người.', 120, 52345, 'Không xác định'),
(127, 'KÝ SINH TRÙNG', 'Parasites (2019)', 'Hoàn tất', 'Bong Joon-ho', 'Không xác định', 11, 3, 5, 2019, 'images/p125.jpg', 'The Faculty (Ký Sinh Trùng Ngoài Hành Tinh) lấy bối cảnh tại một trường trung học nơi các học sinh nghi ngờ đội ngũ giáo viên là người ngoài hành tinh, những người có ý định biến học sinh thành nạn nhân của họ. Herrington High, Ohio, một trường trung học thị trấn nhỏ. Đột nhiên, các giáo viên bắt đầu thay đổi thái độ. Khi Casey và Delilah phải trốn trong tủ quần áo trong phòng khách của giáo viên, họ chứng kiến sự siết cổ của Nurse Harper bởi hai người họ. Bị sốc, họ cố gắng chạy trốn. Chỉ một lúc sau, y tá dường như rất sống, nhưng cũng bằng cách nào đó đã thay đổi, giống như tất cả các giáo viên và hầu hết các học sinh. Chỉ có Casey, Delilah và bốn người khác có vẻ nghi ngờ. Bằng chứng về sự lây nhiễm của người ngoài hành tinh cuối cùng được đưa ra bởi giáo viên hóa học, người cũng chỉ ra một cách để giết chết những người bị nhiễm bệnh.', 120, 52345, 'Không xác định'),
(128, 'ANIMA', 'Anima Teaser (2019)', 'Hoàn tất', 'Paul Thomas Anderson', 'Không xác định', 1, 3, 6, 2019, 'images/p126.jpg', 'Bất ngờ, bất ngờ! Paul Thomas Anderson, giám đốc của Sẽ có đổ máu và Đêm Boogie, sẽ trở lại với một bộ phim ngắn mới, mà anh ấy đã thực hiện với giám đốc đài Radiohead Thom Yorke. Ngắn gọn, có tiêu đề Anima, sẽ ra mắt trên Netflix vào tuần tới. Short đang được phát hành cùng với album solo mới cùng tên của Yorke. Người nhạc sĩ được báo trước đang tìm mọi điểm dừng cho nỗ lực solo mới nhất của mình.', 120, 53110, 'Không xác định'),
(129, 'THE CAPTAIN: CHUYẾN BAY SINH TỬ', 'The captain : Life and death flight (2019)', 'Hoàn tất', 'Lưu Vĩ Cường', 'Không xác định', 9, 3, 7, 2019, 'images/p127.jpg', 'Dựa trên câu chuyện có thật về một phi công phải đảm bảo an toàn cho 128 hành khách và thành viên phi hành đoàn trên máy bay khi kính chắn gió của nó bị hỏng giữa chuyến bay. Vụ việc được coi là một trong những điều kỳ diệu trong lịch sử hàng không', 120, 53156, 'Không xác định'),
(130, 'HÔN LỄ CỦA CHÚNG TA', 'Shubh Mangal Zyada Saavdhan (2019)', 'Hoàn tất', 'Hitesh Kewalya', 'Không xác định', 4, 3, 8, 2019, 'images/p128.jpg', 'Hôn Lễ Của Chúng Ta (Shubh Mangal Zyada Saavdhan) là một bộ phim hài lãng mạn nói tiếng Hindi của Ấn Độ năm 2020 do Hitesh Kewalya viết kịch bản và đạo diễn, đồng thời được sản xuất bởi Aanand L. Rai, Himanshu Sharma, Bhushan Kumar và Krishan Kumar dưới nhãn hiệu Color Yellow Productions và T-Series.\r\n\r\n', 120, 54510, 'Không xác định'),
(131, 'EM GÁI TÔI', 'My younger sister (2019)', 'Hoàn tất', 'Aleksandr Galibin', 'Không xác định', 1, 3, 9, 2019, 'images/p129.jpg', 'Theo như những gì Yamil có thể nhớ lại, chiến tranh luôn là như vậy. Nhưng Yamil đang chờ đợi sự kết thúc của nó, bởi vì sau đó Cha của cậu, chỉ được biết đến với cậu bé qua những bức ảnh và thư, sẽ trở về nhà. Một ngày nọ, Mẹ của anh ấy đi đến một thành phố xa xôi và mang theo một cô gái câm lặng Oksana. Mẹ cũng theo lệnh của Cha để chăm sóc Oksana như thể cô ấy là em gái của anh ấy.', 120, 55123, 'Không xác định'),
(132, 'NGÔI ĐỀN KỲ QUÁI', 'Strange temple (2019)', 'Hoàn tất', 'Phontharis Chotkijsadarsopon', 'Không xác định', 10, 3, 10, 2019, 'images/p130.jpg', 'Bộ phim là câu chuyện kể về một nhóm bạn gồm 3 thành viên rủ nhau đi tu sau khi gặp phải một vụ tai nạn nghiệm trọng khiến một trong số 4 người bạn mất. Lúc này một thành viên trong nhóm mới nhớ ra trước đó anh đã đến một ngôi đền cầu nguyện trúng số và hứa mình với nhóm bạn sẽ đi tu nếu như trúng số. Cuối cùng những người sống sót đã cùng nhau đến đền Pee Nak để xin xuất gia tu hành, nhưng từ khi đặt chân đến đây những tình huống kỳ lạ cứ liên tiếp xảy ra và với tần suất ngày càng dày đặc. Sau nhiều lần bị dọa chạy té khói, cuối cùng họ cũng tìm ra được ẩn khúc phía sau và câu chuyện đã khiến rất nhiều người phải cảm động.', 120, 55987, 'Không xác định'),
(133, 'BLOODSHOT', 'Bloodshot (2020)', 'Hoàn tất', 'David S F Wilson', 'Không xác định', 9, 3, 1, 2020, 'images/p131.jpg', 'Trong trailer đầu tiên Bloodshot, các công nghệ độc ác đã hồi sinh nhân vật Ray Garrison do Vin Diesel hóa thân với công nghệ nano. Quá trình này giúp anh ta có siêu sức mạnh, siêu hồi phục vết thương và siêu ác cảm. Nhiệm vụ của anh ta: săn lùng những người đã giết chết gia đình anh ta (những người thực sự là mục tiêu chính trị được lập trình trong não anh ta bởi công ty bí ẩn).', 120, 54550, 'Không xác định'),
(134, 'TIỆC TRĂNG MÁU', 'Blood moon party (2020)', 'Hoàn tất', 'Nguyễn Quang Dũng', 'Không xác định', 8, 3, 2, 2020, 'images/p132.jpg', 'Bộ phim Tiệc trăng máu xoay quanh câu chuyện về nhóm 4 người bạn thân chơi cùng nhau từ thuở cởi chuồng, cho đến khi trở thành những người đàn ông trung niên có gia đình riêng, công việc riêng. Một ngày nọ, gia đình Quang – Ánh mở một bữa tiệc nhỏ để mừng tân gia và cũng là dịp để nhóm bạn tụ tập ôn lại chuyện cũ. Không khí bữa tiệc đầy vui vẻ, cho đến khi Ánh – với tư cách chủ nhà đã đề nghị mọi người cùng tham gia trò chơi nhỏ, mọi người đều phải để điện thoại ở chế độ công khai từ cuộc gọi, tin nhắn, email, hay bất cứ thông báo nào về điện thoại cho mọi người cùng biết.', 120, 56102, 'Không xác định'),
(135, 'HOÀNG HẬU JODHAA', 'Jodhaa akbar (2020)', 'Hoàn tất', 'Ashutosh Gowariker', 'Không xác định', 7, 3, 8, 2020, 'images/p133.jpg', 'Jodhaa Akbar là một bộ phim điển hình cho nền điện ảnh nói tiếng Hindi mà thế giới quen gọi là Bollywood: ca ngợi chủ nghĩa anh hùng, diễn viên chính đẹp, cảnh quay hoành tráng với số lượng diễn viên quần chúng đông đảo, âm nhạc hay với những màn vũ đạo tuyệt vời, chuyện tình lãng mạn như mơ, kết thúc đầy hạnh phúc...', 120, 55678, 'Không xác định'),
(136, 'BÀ HOÀNG BUÔN CỎ', 'La Daronne (2020)', 'Hoàn tất', 'Jean-Paul Salomé', 'Không xác định', 2, 3, 3, 2020, 'images/p134.jpg', 'Huppert thủ vai Patience, một người làm công việc phiên dịch cho bộ phận chống ma tuý của một khu cảnh sát Pháp. Sau một vụ phá sản đầy biến cố, cô ấy đã nói với đồng nghiệp của mình tên là Philippe ( Hippolyte Girardot ) rằng cô ấy đã có được nó. Nó ở đây không phải là công việc, cô ấy nhân mạnh. Tuy vậy, cuối cùng thì đó cũng là công việc, cô ấy cảm thấy ngày càng bức xúc trước sự bất công của cuộc chiến chống ma tuý ở Pháp. Khi cô ấy nhận ra rằng một trong những đứa trẻ cô ấy đang theo dõi là con trai của một y tá đang chăm sóc người mẹ già ốm yếu của Patience. Patience đã thực hiện việc quản lý để thừa kế giám sát một lô hàng lớn. Anh ta dùng một chú chó săn cừu Đức có tên là DNA để đánh hơi ma tuý và những kẻ ẩn nấp dưới bóng người hồi giáo. Patience đã dùng lính mới để theo dõi với biệt danh là  Scotch và Cocoa Puffs.', 120, 57101, 'Không xác định'),
(137, 'CUỘC CHIẾN HỦY DIỆT', 'War of destruction (2020)', 'Hoàn tất', 'Liam O\'Donnell', 'Không xác định', 11, 3, 6, 2020, 'images/p135.jpg', 'Một loại virus xuất hiện, xâm nhập vào những người ngoài hành tinh đang sinh sống trên Trái Đất. Loại virus này khiến những sinh vật từ thân thiện trở nên hung hãn và chống lại con người. Đội trưởng Rose Corley phải lãnh đạo một đội lính đánh thuê tinh nhuệ, tham gia nhiệm vụ đến thế giới ngoài hành tinh để cứu những gì còn lại của nhân loại​', 120, 57345, 'Không xác định'),
(138, 'THANH GƯƠM DIỆT QUỶ', 'Demon slayer (2020)', 'Hoàn tất ', 'Gotouge Koyoharu', 'Không xác định', 5, 3, 4, 2020, 'images/p136.jpg', 'Anime Demon Slayer: Thanh Gươm Diệt Quỷ còn có tên gọi khác là Lưỡi Gươm Diệt Quỷ hay Yaiba Kimetsu. Phim Thanh Gươm Diệt Quỷ: Kimetsu No Yaiba lấy bối cảnh vào thời Taisho tại Nhật Bản, có một gia đình hai anh em sống nương tựa vào nhau bằng nghề bán than. Nhưng những tháng ngày bình yên đó đã bị phá hủy khi một con quỷ sát hại cả gia đình cậu, chỉ còn duy nhất người em gái Nezuko Kamado nhưng cô lại bị biến thành quỷ. Mang trong mình quyết tâm chữa trị cho em gái, Tanjiro cùng Nezuko bắt đầu cuộc hành trình tìm kiếm tung tích con quỷ đã ra tay với gia đình mình nhằm phá giải lời nguyền.', 120, 58187, 'Không xác định'),
(139, 'KẺ XÂM NHẬP', 'Intruder (2020)', 'Hoàn tất', 'Son Won-pyeong', 'Không xác định', 8, 3, 5, 2020, 'images/p137.jpg', 'Kẻ xâm nhập kể về gia đình Seo Jin (Kim Moo Yul), một kiến trúc sư thành đạt nhưng bị sang chấn tâm lý vì chứng kiến cái chết của người vợ cũ. Anh cũng ôm trong lòng nỗi ân hận vì từng để lạc mất em gái cách đây 25 năm.', 120, 58001, 'Không xác định'),
(140, 'ÁM SÁT', 'Assassinate (2020)', 'Hoàn tất', 'Trần Đại Nghĩa', 'Không xác định', 16, 3, 7, 2020, 'images/p138.jpg', 'Bộ phim truyền hình của Đài Truyền hình Trung ương Trung Quốc phát sóng lần đầu năm 1998. Đây là chuyển thể truyền hình từ tiểu thuyết cùng tên của nhà văn Thi Nại Am, tác phẩm kinh điển được coi là một trong Tứ đại danh tác của Trung Quốc. Lấy bối cảnh lịch sử Trung Quốc thời Bắc Tống, 43 tập phim Thủy hử đã mô tả lại số phận của 108 vị anh hùng Lương Sơn Bạc, những người bằng nhiều con đường và số phận khác nhau đã quy tụ trên Lương Sơn Bạc để nổi dậy chống lại triều đình nhà Tống.', 120, 55468, 'Không xác định'),
(141, 'NGƯỜI ĐẤU KIẾM', 'Ha Octpne (2020)', 'Hoàn tất', 'Eduard Bordukov', 'Không xác định', 8, 3, 9, 2020, 'images/p139.jpg', 'Người đấu kiếm - On the Edge là bộ phim chính kịch, thể thao của Nga được phát hành năm 2020. Tác phẩm do đạo diễn Eduard Bordukov chịu trách nhiệm chỉ đạo. Tác phẩm có sự tham gia của các diễn viên Svetlana Khodchenkova , Stasya Miloslavskaya , Sergei Puskepalis và Alexey Barabash. Bộ phim được phát hành tại rạp vào ngày 26 tháng 11 năm 2020 bởi Central Partnership.Tác phẩm kể về Aleksandra Pokrovskaya, một tay đấu kiếm nổi tiếng, người có mục tiêu hành huy chương vàng Olympic. Con đường của Aleksandra bị cạnh tranh bởi một vận động viên tài năng khác, là một tay kiếm trẻ tuổi vô danh tên là Kira Egorova. Kira có đầy tham vọng và cô ấy cũng rất tự tin, cô ấy muốn tham gia thế vận hội và huy chương vàng Olympic là mục tiêu phấn đấu của cả cuộc đời cô.', 120, 57111, 'Không xác định'),
(142, 'NGẠ QUỶ : TIẾNG THÉT ĐỒNG GIÓ HÚ', 'Precious ghosts: The howling sound of the wind (2020)', 'Hoàn tất', 'Chalerm Wongpim', 'Không xác định', 14, 3, 10, 2020, 'images/p140.jpg', 'Nội dung phim\r\n\r\nNgạ Quỷ: Tiếng Thét Đồng Gió Hú Một trường hợp kỳ lạ phát sinh nơi Làng Far Thung Maon Kết quả là chính phủ quyết định cử một cảnh sát giỏi như \"Sachathorn Section\" đi điều tra sự thật. Mặc dù không muốn đi du lịch lần này Vì những lời đồn thổi mà có những câu chuyện ma mị liên quan Nhưng Sachathorn buộc phải đồng ý vì một người giám sát như \"Mom Bang\" đã đưa ra tối hậu thư trong công việc này, với một \"Bukgum\" trẻ tuổi đã khuấy động một đứa trẻ phục vụ nhà Mom Bang Ai là một nhân vật phản diện địa phương, sẵn sàng làm trợ lý và hướng dẫn cho cuộc hành trình vì anh ta muốn quay lại với người phụ nữ trẻ mà cô đã yêu thầm, \"Yi-wung\"', 120, 58199, 'Không xác định'),
(143, 'GÓA PHỤ ĐEN', 'Black Widow (2021)', 'Hoàn tất', 'Cate Shortland', 'Không xác định', 11, 3, 2, 2021, 'images/p141.jpg', 'Góa phụ đen (tên gốc tiếng Anh: Black Widow) là một bộ phim siêu anh hùng Mỹ ra mắt dựa trên nhân vật cùng tên của Marvel Comics. Do Marvel Studios sản xuất và Walt Disney Studios Motion Pictures phân phối, dự định đây sẽ là bộ phim thứ 24 trong Vũ trụ Điện ảnh Marvel (MCU). Bộ phim được Cate Shortland làm đạo diễn, do Eric Pearson viết kịch bản dựa trên câu chuyện của Jac Schaeffer và Ned Benson, và có sự tham gia của Scarlett Johansson trong vai Natasha Romanoff / Black Widow, cùng với David Harbor, Florence Pugh, OT Fagbenle, William Hurt, Ray Winstone và Rachel Weisz. Lấy bối cảnh ngay sau sự kiện Captain America: Nội chiến siêu anh hùng (2016), Romanoff đang tìm hiểu và đối mặt với quá khứ của mình.', 120, 58188, 'Không xác định'),
(144, 'GÁI GIÀ LẮM CHIÊU', 'Gái già lắm chiêu (2021)', 'Hoàn tất', 'Bảo Nhân, Nam Cito', 'Không xác định', 2, 3, 2, 2021, 'images/p142.jpg', 'Gái Già Lắm Chiêu V là một bộ phim được đầu tư siêu khủng cả về tiền bạc lẫn chất xám. Bộ phim chú trọng xây dựng nhiều lớp lang drama để đánh lừa khán giả và chính các nhân vật của họ. Cùng tìm hiểu xem từng lớp drama này đã làm tốt nhiệm vụ của mình chưa nhé.\r\n\r\nNguồn : https://bloganchoi.com/review-gai-gia-lam-chieu-5/ ', 120, 53142, 'Không xác định'),
(145, 'NGÔI NHÀ DƯỚI NƯỚC ', 'The deep house (2021)', 'Hoàn tất', 'Alexandre Bustillo', 'Không xác định', 14, 3, 3, 2021, 'images/p143.jpg', 'The Deep House là bộ phim mới của hai nhà làm phim Inside Alexandre Bustillo và Julien Maury là một phim ma quái dưới nước, chuyển những con quỷ trong ngôi nhà ma quen thuộc sang bối cảnh dưới nước, một quyết định khiến cho cảm giác quen thuộc trở lại mới mẻ.Những gì các nhà làm phim và nhà quay phim Jacques Ballard đã tạo ra là: Hình ảnh dưới nước cực kỳ ám ảnh; kỳ lạ ở sự không tự nhiên của nó, và ngột ngạt đến mức đáng sợ. Điều có vẻ giống như sự tự do ngoài trời trong một bộ phim truyền thống về ngôi nhà ma ám là ở đây một không gian đáng sợ, tách biệt mà các nhân vật không thể thoát qua. Họ phải bơi, và chỉ có thể bơi nhanh thật nhanh. Và chỉ để làm cho mọi thứ thêm khó chịu, các nhân vật chỉ có một nguồn cung cấp oxi hạn chế.', 120, 51212, 'Không xác định'),
(146, 'JOSEE: KHI NÀNG THƠ YÊU', 'Josee: When the muse loves (2021)', 'Hoàn tất', 'Kotaro Tamura', 'Nakagawa Taishi,Kiyohara Kaya,Miyamoto Yume', 6, 3, 4, 2021, 'images/p144.jpg', 'Sau khi kết bạn với một sinh viên ngành sinh vật biển, một phụ nữ bại liệt giỏi hội họa và ưa châm chọc bắt đầu trải nghiệm thế giới bên ngoài ngôi nhà của mình.', 120, 53232, 'Không xác định'),
(147, 'BÀN TAY DIỆT QUỶ', 'Demon slaying hand (2021)', 'Hoàn tất ', 'Kim Joo-Hwan', 'Park Seo Joon, Ahn Sung Ki, Woo Do Hwan, Choi Woo Sik', 1, 3, 5, 2021, 'images/p145.jpg', 'Sau khi bản thân bỗng nhiên sở hữu “Bàn tay diệt quỷ”, võ sĩ MMA Yong Hoo (Park Seo Joon thủ vai) đã dấn thân vào hành trình trừ tà, trục quỷ đối đầu với Giám Mục Bóng Tối (Woo Do Hwan) – tên quỷ Satan đột lốt người. Từ đó sự thật về cái chết của cha Yong Hoo cũng dần được hé lộ cũng như nguyên nhân anh trở thành “người được chọn”.', 120, 50011, 'Không xác định'),
(148, 'CÔNG CHÚA YAKUZA', 'Yakuza Princess (2021)', 'Hoàn tất', 'Vicente Amorim', 'Không xác định', 16, 3, 6, 2021, 'images/p146.png', 'Công Chúa Yakuza - Yakuza Princess, Yakuza Princess 2021 Full Người Thừa Kế Của Một Nửa Tổ Chức Tội Phạm Yakuza đã Tạo Dựng Một Liên Minh Không Dễ Chịu Với Một Người Lạ Bị Mất Trí Nhớ, Người Tin Rằng Một Thanh Kiếm Cổ Sẽ Gắn Kết Hai Số Phận Của Họ. Cô Phải Mở Cuộc Chiến Chống Lại Một Nửa Còn Lại Của Tổ Chức Muốn Cô Chết.', 120, 56111, 'Không xác định'),
(149, 'NA TRA: MA ĐỒNG GIÁNG THẾ', 'Na Tra: Ghosts descended (2021)', 'Hoàn tất', 'Yu Yang', 'Yanting LüJosephMo HanHao ChenQi LüJiaming ZhangWei YangYuxiang HeJunpeng RenXinglinr', 5, 3, 7, 2021, 'images/p147.jpg', 'Từ thuở xa xưa, tinh hoa đất trời hội tụ thành một viên ngọc chứa đựng năng lượng khổng lồ. Nguyên Thủy Thiên Tôn đã phân tách viên ngọc này thành 1 viên Linh Châu và 1 viên Ma Hoàn. Viên Linh Châu sẽ đầu thai thành một anh hùng cứu thế, phò trợ nhà Chu. Trong khi đó, Ma Hoàn sẽ tạo ra một Ma Vương tàn sát thiên hạ. Để ngăn chặn thảm họa, Nguyên Thủy Thiên Tôn đã hạ chú để sau 3 năm Ma Vương sẽ bị Thiên kiếp tiêu diệt. Liệu Na Tra có đủ sức để thay đổi Thiên mệnh?\r\n', 120, 65123, 'Không xác định'),
(150, 'THE WHITE TIGER', 'The White Tiger (2021)', 'Hoàn tất ', 'Ramin Bahrani', 'Không xác định ', 4, 3, 8, 2021, 'images/p148.jpg', 'Hành động mở ra qua con mắt của Balram (Adarsh ​​Gourav), người kể lại câu chuyện của mình – bắt đầu từ năm 2007 – từ vị trí thuận lợi của một nhà tài phiệt mới được đúc, viết một lá thư cho thủ tướng Trung Quốc đến thăm để yêu cầu cơ hội gặp mặt với ông ta. Câu chuyện sau đó quay trở lại, tiết lộ Balram là người hầu “hạ đẳng” của một gia đình tham nhũng và khét tiếng, ngoan ngoãn điều hành như tài xế của họ.', 120, 51234, 'Không xác định'),
(151, 'OXYGEN', 'Oxygen (2021)', 'Hoàn tất ', 'Alexandre Aja', 'Không xác định', 10, 3, 9, 2021, 'images/p149.jpg', 'Oxygen (2021) là phim viễn tưởng về tiền – tận thế, tuy bối cảnh chỉ xoay quanh Elizabeth nhưng phim khá cuốn hút. Thông điệp phim sẽ cho chúng ta câu trả lời về ý nghĩa tồn tại của đời người, nếu bạn thật sự quan tâm đến điều đó, với Chí Blog thì việc thưởng thức phim chỉ là phụ, việc chính là tôi  xem mỗi bộ phim như một câu chuyện ngụ ngôn về cuộc sống, và đây là một bộ phim hay. IMDb 6.5 , xem phim để biết thêm chi tiết hoặc đọc bài tiếp.', 120, 55123, 'Không xác định'),
(152, 'DEEP', 'Deep (2021)', 'Hoàn tất ', 'Sita Likitvanichkul', 'Panisara Rikulsurakan, Kay Lertsittichai, Supanaree Sutavijitvong', 8, 3, 10, 2021, 'images/p150.jpg', 'Bốn học sinh trường y khoa bị mất trí nhớ bị dụ vào một thí nghiệm khoa học thần kinh nằm ngoài tầm kiểm soát - và phải tìm ra lối thoát trước khi quá muộn.', 120, 56122, 'Không xác định'),
(153, 'BỘ SƯU TẬP XÁC', 'The Mortuary Collection (2019)', 'Hoàn tất', 'Marcus Dunstan', 'Không xác định', 11, 1, 1, 2019, 'images/p151.jpg', 'Một nhà hành dâm lập dị kể lại một số câu chuyện rùng rợn và có phần ma mị mà anh ta gặp phải trong sự nghiệp lẫy lừng của mình.', 120, 54123, 'Không xác định'),
(154, 'MẮT BIẾC', 'Mắt biếc (2019)', 'Hoàn tất', 'Victor Vũ', 'Trúc Anh, Trần Nghĩa, Đỗ Khánh Vân, Trần Phong', 8, 1, 2, 2019, 'images/p152.jpg', 'Phim Mắt Biếc được chuyển thể từ tiểu thuyết của nhà văn Nguyễn Nhật Ánh.Mắt Biếc xoay quanh mối tình đơn phương của Ngạn với Hà Lan, cô bạn gái có cặp mắt hút hồn nhưng cá tính bướng bỉnh. Một chuyện tình nhiều cung bậc, từ ngộ nghĩnh trẻ con, rồi tình yêu thuở học trò trong sáng, trải qua bao biến cố, trở thành một cuộc “đuổi hình bắt bóng” buồn da diết nhưng không nguôi hi vọng.Câu chuyện càng trở nên éo le hơn khi Trà Long – con gái của Hà Lan, lớn lên lại nhen nhóm một tình yêu như thế với Ngạn…', 120, 54127, 'Không xác định'),
(155, 'NUỐT CHỬNG ', 'Swallow (2019)', 'Hoàn tất ', 'Carlo Mirabella-Davis', 'Không xác định', 14, 1, 3, 2019, 'images/p153.jpg', 'Nhìn bề ngoài, Hunter (do Haley Bennett thủ vai) có vẻ là một bà nội trợ hạnh phúc, nhưng sự tồn tại của cô xoay quanh người chồng. Tuy nhiên, do áp lực phải đáp ứng sự kiểm soát và kì vọng của chồng, cô bắt đầu phát triển một thói quen nguy hiểm gọi là hội chứng Pica. Viên bi, ghim, tua vít, cô nuốt những thứ không ăn được và đôi khi đe dọa đến tính mạng. Là một bộ phim kinh dị tâm lý khiêu khích và khó chịu, Swallow cũng mang những thông điệp đầy hi vọng khi dõi theo quá trình đấu tranh để tìm lại tự do của bản thân người phụ nữ …', 120, 54123, 'Không xác định'),
(156, 'HỌC VIỆN ANH HÙNG', 'My hero academia (2019)', 'Hoàn tất ', 'Horikoshi Kohei', 'Không xác định', 5, 1, 4, 2019, 'images/p154.jpg', 'him Học Viện Anh Hùng (My Hero Academia) là 1 bộ phim anime Nhật Bản nổi tiếng được yêu thích trên toàn thế giới. Nội dung câu chuyện lấy bối cảnh ở trường Trung học UA, học viện siêu anh hùng nổi tiếng, nơi mà các học viên học tập và rèn luyện để trở thành anh hùng. Khởi đầu bộ phim là một tin tức về một \"em bé phát sáng\" được gửi đến từ thành phố Thanh Thanh, Trung Quốc. Kể từ đó, \"siêu nhân\" được phát hiện ở nhiều nơi mà không rõ nguyên nhân. Izuku Midoriya (thường được gọi là Deku) luôn khao khát được trở thành một người anh hùng với năng lực mạnh mẽ. Với ước mơ ấy, cậu đăng ký vào học viện anh hùng nhưng không may, Deku lại là một học sinh cá biệt trong trường. Một ngày nọ, Deku gặp được thần tượng của mình là anh hùng số 1, All Might. Nhờ sự tác động của All Might, Deku quyết định thay đổi số phận. Hành trình nỗ lực phát triển để trở thành một anh hùng tốt nhất của Deku sẽ được bật mí trong các tập tiếp theo của bộ phim. \r\n', 120, 55124, 'Không xác định'),
(157, 'ZOMBIE ĐẠI HẠ GIÁ', 'Zombie on sale (2019)', 'Hoàn tất', 'Lee Min-jae', 'Jung Jae-Young, Uhm Ji-Won, Lee Soo-kyung', 2, 1, 5, 2019, 'images/p155.jpg', 'Gia đình ông Park vốn dĩ đã kỳ quặc nay còn kỳ quái hơn khi nhận nuôi zombie trong nhà. Trái ngược với nỗi sợ khi phải đối mặt với zombie thì gia đình ông Park đã tận dụng kiếm tiền một cách triệt để từ thành viên mới này. Từ đây nảy sinh những tình huống hài hước khó đỡ cùng chuyện tình đáng yêu giữa Zombie và cô con út của gia đình ông Park.', 120, 57123, 'Không xác định'),
(158, 'SAU THẾ CHIẾN', 'The Aftermath (2019)', 'Hoàn tất', 'James Kent', 'Keira Knightley, Ned Wills, Pandora Colin', 1, 1, 6, 2019, 'images/p156.jpg', 'Sau Thế chiến II, một đại tá người Anh và vợ được chỉ định sống ở Hamburg trong thời kỳ tái thiết sau chiến tranh, nhưng căng thẳng nảy sinh với người Đức trước đây sở hữu ngôi nhà.', 120, 50123, 'Không xác định'),
(159, 'VÕ LÂM QUÁI THÚ ', 'Kung Fu Monster (2019)', 'Hoàn tất', 'Lưu Vĩ Cường', 'Không xác định', 16, 1, 7, 2019, 'images/p157.jpg', 'Trong cuộc chiến săn bắt quái thú, Tôn Ngọc Hạc chạm trán nhóm hảo hán chuyên cướp bạc của quan chia cho dân nghèo gồm Chân Kiếm, Hùng Kiều Kiều và Lãnh Băng Băng. Thế nhưng, số bạc chưa bị cướp bỗng không cánh mà bay khiến triều đình phong tỏa khắp nơi để truy bắt. Trong mối nguy trăm bề, nhóm nghĩa hiệp không hề hay biết rằng mình cũng đang bị săn lùng bởi một loài quái thú khát máu trong truyền thuyết.', 120, 45412, 'Không xác định'),
(160, 'ĐƯỜNG ĐUA MÁU 3', 'Race 3 (2019)', 'Hoàn tất', 'Remo D\'Souza', 'nil KapoorBobby DeolSalman Khan', 9, 1, 8, 2019, 'images/p158.jpg', 'Phim xoay quanh một gia đình trùm tội phạm, vì những mối quan hệ và lòng trung thành đã khiến họ trả giá rất đắt...\r\n\r\n', 154, 56312, 'Không xác định'),
(161, 'CẬU LÍNH TRẺ', 'Soldier boy (2019)', 'Hoàn tất', 'Viktoria Fanasiutina', 'Không xác định', 1, 1, 9, 2019, 'images/p159.jpg', 'Bộ phim dựa trên những sự kiện có thật. Đây là câu chuyện kể về những sự kiện thú vị xảy ra trong cuộc đời của người lính nhỏ nhất - anh hùng của Chiến tranh Vệ quốc Vĩ đại, cậu bé 6 tuổi Sergei Aleshkov. Anh mất hết người thân và phải nhập ngũ. Với một cậu bé sáu tuổi, họ bắt đầu chơi trò chơi người lính để lưu giữ tuổi thơ của cậu, và cậu, để tuân theo danh hiệu danh dự này, đã trở thành một người bảo vệ thực sự của Tổ quốc.', 120, 58543, 'Không xác định'),
(162, 'KIM CƯƠNG THẦN BÍ', 'Pachara Montra (2019)', 'Hoàn tất', 'Anuwat Thanomrod', 'Không xác định', 2, 1, 10, 2019, 'images/p160.jpg', 'Kim Cương Thần Bí - Pachara Montra kể về chuyện tình của Nadol Suphamit (Weir Sukkollawat) và cô y tá Nampetch (Bow Maylada) với sự xuất hiện đầy huyền bí và bí ẩn của viên kim cương mắt mèo. Pachara, viên kim cương đỏ, là một trong số những viên kim cương đắt giá nhất trên thế giới. Đó là lý do mà ai cũng muốn được sở hữu nó. Năm xưa đã có một giáo sư và đoàn mình đi tìm kiếm viên kim cương huyền bí đó. Để đến được nơi mà viên kim cương đang nằm ở đó họ phải vượt qua rất nhiều khó khăn để đến được ngôi đền cổ. Nơi đây thờ một tảng đá hình thân mèo mặt người với đôi mắt đỏ và đó chính là viên kim cương huyền bí. Pachara Montra đề cao triết lý nhân quả ở đời, gieo nhân nào gặp quả nấy. Đừng vì chút hương hoa làm mờ lý trí khiến ta đánh mất bản thân. Dù cho viên kim cương đem lại sự giàu có nhưng đổi lại là sự đau khổ tột cùng mà người gây ra tội lỗi phải hướng chịu. Tình yêu, sự thù hận, đau khổ, dằn vặt và những câu chuyện kì lạ sẽ đi về đâu. Tất cả sẽ có trong những tập phim Pachara Montra.  ', 95, 51231, 'Không xác định'),
(163, 'BIỆT ĐỘI GIẢI CỨU RỒNG', 'Dragons Rescue Riders: Secrets of the Songwing (2020)', 'Hoàn tất ', 'Steven Altiere, Steven Altiere (story editor)', 'Noah Kaye Bentley,Brennley Brown,Zach Callison', 5, 1, 1, 2020, 'images/p161.jpg', 'Khi con rồng hát có tiếng gầm cuốn hút thôi miên những chú rồng và người dân Huttsgalor, Biệt đội giải cứu phải tìm cách phá giải bùa mê.', 132, 52309, 'Không xác định'),
(164, 'BÍ MẬT ĐẢO LINH XÀ', 'Secrets of snake god island (2020)', 'Hoàn tất', 'Diệp Thiên Hành', 'Lệ Hạ Anh ,Dương Minh', 11, 1, 2, 2020, 'images/p162.jpg', 'Bí mật đảo Linh Xà là câu chuyện xoay quanh 2 thế hệ. Trần Thái (Dương Minh) là nhà nghiên cứu, thám hiểm thuộc thế hệ thứ nhất. Trong lúc bị rắn tấn công, anh may mắn được Đan Thy (Hạ Anh) ra tay cứu giúp. Từ đó, cả hai bắt đầu nảy sinh tình cảm và hạ sinh được một cậu con trai. Thế nhưng, Trần Thái lại không hề biết rằng Đan Thy lại chính là người thuộc Xà tộc và nắm giữ miếng ngọc quý. Chính điều này đã khiến Trần Thái rơi vào việc truy đuổi gắt gao của nhóm người Hùng Sư.', 120, 30123, 'Không xác định'),
(165, 'KHÁNG CHIẾN', 'Resistance (2020)', 'Hoàn tất', 'Jonathan Jakubowicz', 'Jesse Eisenberg, Clémence Poésy, Félix Moati, Vica Kerekes, Matthias', 9, 1, 3, 2020, 'images/p163.jpg', 'RESISTANCE : Câu chuyện về một nhóm Hướng đạo sinh Do Thái làm việc với Kháng chiến Pháp để cứu sống mười nghìn trẻ mồ côi trong Thế chiến II.', 143, 52138, 'Không xác định'),
(166, 'BÚP BÊ TÌNH YÊU', 'Romance Doll (2020)', 'Hoàn tất', 'Yuki Tanada', 'Yû Aoi, Kenta Hamano, Kitarô', 8, 1, 4, 2020, 'images/p164.jpg', 'Búp Bê Tình Yêu - Romance Doll (2020) là bộ phim live - action được chuyển thể từ nguyên tác cùng tên của Tanada Yuki. Câu chuyện xoay quanh hai vợ chồng Tetsuo và Sonoko, mặc dù cuộc sống hôn nhân của họ rất bình yên nhưng cả hai đều cất giấu bí mật riêng không muốn đối phương biết. Tetsuo che giấu việc anh là nghệ nhân tạo nên búp bê người lớn. Cuộc sống hôn nhân của hai người dần lạnh nhạt, chăn gối cũng phai mờ. Một ngày nọ Sonoko thổ lộ với anh về bí mật của mình.', 132, 51212, 'Không xác định'),
(167, 'Ô KÊ, CHỊ ĐẠI', 'Okay Madam (2020)', 'Hoàn tất', 'Lee Cheol-ha', 'Woon Jong Jeon, Bae Jeong-nam, Uhm Junghwa, Sang-yoon Lee, Sun-Bin Lee, Sung-woong Park', 2, 1, 5, 2020, 'images/p165.jpg', 'Mi-Young điều hành một cửa hàng tại một khu chợ truyền thống, nơi cô làm và bán những chiếc bánh mì xoắn. Chồng cô Seok-Hwan làm nghề sửa chữa máy tính. Một ngày nọ, Seok-Hwan bất ngờ thắng một chuyến đi miễn phí đến Hawaii. Khi Mi-Young và Seok-Hwan lên chiếc máy bay cho lần du lịch quốc tế đầu tiên của hai vợ chồng, mọi thứ không như mong đợi.', 123, 52421, 'Không xác định'),
(168, 'NGƯỜI ĐƯA TIN', 'The Courier (2020)', 'Hoàn tất', 'Dominic Cooke', 'Không xác định', 10, 1, 6, 2020, 'images/p166.jpg', 'Bộ phim kể về câu chuyện có thật từ một doanh nhân người Anh đã giúp MI6 xâm nhập vào các chương trình hạt nhân của Liên Xô trong chiến tranh lạnh. Wynne và nguồn tin từ đối tác tại Nga - Oleg Penkovsky (mật danh Ironbark) đã cung cấp thông tin tình báo quan trọng nhằm chấm dứt khủng hoảng tên lửa tại Cuba. Wynne đã được một điệp viên MI6 và một điệp viên CIA tiếp cận và yêu cầu đóng giả làm đối tác kinh doanh của Oleg Penkovsky để thu thập thông tin tình báo liên quan đến việc vận chuyển tên lửa của Liên Xô tới Cuba. Cuối cùng, cả Wynne và Penkovsky đều bị bắt và Penkovsky thừa nhận rằng đã tiết lộ các thông tin mật khi khẳng định Wynne là người chuyển phát nhanh không biết gì về các thông tin tình báo được truyền lại, điều này cũng ủng hộ cho tuyên bố của Wynne về việc anh không có hành vi sai trái. Wynne chắc chắn rằng Penkovsky biết sự hy sinh của anh ấy là cứng đáng. Penkovsky bị hành quyết và được chôn cất tại ngôi một bị đánh dấu. Wynne cuối cùng cũng được trả tự do trong một cuộc trao đổi từ nhân cho điệp viên Nga Konon Molody.', 120, 21412, 'Không xác định'),
(169, 'XÀ VƯƠNG', 'King Of Snake (2020)', 'Hoàn tất', 'Huanxiang Chen', 'Xinzhe, ChenJian GaoKang, Ning', 10, 1, 7, 2020, 'images/p167.jpg', 'Trong thời kỳ lãnh chúa, vì xây dựng đường sắt phá rừng, phá hủy môi trường sinh thái, dẫn đến rắn trả thù, làng Yong’an bị một số lượng lớn rắn độc tấn công, dân làng bị giết và bị thương, để chữa trị nọc rắn trong cơ thể của dân làng, thợ bắt rắn Musheng phải gánh trọng trách nặng nề, dẫn đầu đội tìm kiếm câu chuyện về loài rắn hoa cỏ.', 120, 41321, 'Không xác định'),
(170, 'GIẢI CỨU VỢ YÊU', 'Khuda Haafiz (2020)', 'Hoàn tất', 'Faruk Kabir', 'Vidyut Jammwal, Shivaleeka Oberoi, Annu Kapoor', 8, 1, 8, 2020, 'images/p168.jpg', 'Giải Cứu Vợ Yêu - Khuda Haafiz (2020) khi Sameer Choudhary bị bắt giam tại một quốc gia biệt lập nằm ở Trung Đông, anh đồng ý tiết lộ nguyên nhân cho người đại diện Đại sứ quán Ấn Độ là Mishra. Từ đó biết được trước đây Sameer là một kỹ sư bình thường trót đem lòng yêu thương Nargis rồi kết hôn cùng cô. Tuy nhiên khủng hoảng tài chính khiến cả hai rơi vào cảnh thất nghiệp, vừa may gặp Nadeem và được anh ta giới thiệu đến quốc gia này làm việc. Nargis rời đi trước tuy nhiên cô lại gọi cho Sameer nói rằng có người muốn bắt cóc mình. Bất chấp tất cả mọi thứ Sameer quyết tâm giải cứu vợ mình. Tuy nhiên kết cuộc cuối cùng của Sameer chính là bị giam giữ.', 132, 53654, 'Không xác định'),
(171, 'THẢM HỌA CHERNOBYL: VỰC SÂU', 'Chernobyl: Abyss (2020)', 'Hoàn tất', 'Danila Kozlovskiy', 'Danila Kozlovskiy, Oksana Akinshina, Filipp Avdeev', 1, 1, 9, 2020, 'images/p169.jpg', 'Câu chuyện về một người lính cứu hỏa anh hùng, người từng là một trong những người thanh lý Chernobyl', 95, 21352, 'Không xác định');
INSERT INTO `film` (`id`, `name`, `name2`, `status`, `director`, `actor`, `category_id`, `type_movie`, `nation_id`, `year`, `image`, `description`, `duration`, `num_view`, `author`) VALUES
(172, 'ANH CHÀNG NHÀ QUÊ', 'Weir Sukollawat, Stephany Auernig (2019)', 'Hoàn tất', 'Thongchai Prasongsanti', 'Không xác định', 2, 1, 10, 2020, 'images/p170.jpg', 'Bộ phim hài lãng mạn về một cô nàng giàu có và một anh chàng nhà quê.\r\nKhông biết do duyên số hay một nhiệm vụ quốc gia đã khiến viên viên cảnh sát Isaan này và một cô chủ xui xẻo phải đóng giả làm người tình của nhau. Càng ngày càng nhiều vấn đề nảy sinh, nhưng bên cạnh đó tinh cảm của họ cũng phát triển từng chút một. Vì vậy, đây không chỉ là một nhiệm vụ nguy hiểm mà tình yêu của họ cũng đầy rẫy thử thách.', 180, 51236, 'Không xác định'),
(173, 'CÔNG VIÊN LUNA', 'Luna park (2021)', 'Hoàn tất', 'Isabella Aguilar', 'Simona Tabasco,Alessio Lapice,Lia Grieco', 8, 1, 1, 2021, 'images/p171.jpg', 'Những năm 1960 ở Rome, một cô gái trẻ phóng khoáng lớn lên trong rạp xiếc của gia đình bất ngờ phát hiện ra mình thuộc về hai thế giới rất khác nhau.', 120, 35232, 'Không xác định'),
(174, 'SONG SONG ', 'Glitch (2021)', 'Hoàn tất', 'Nguyễn Hữu Hoàng', 'Nhã Phương,Trương Thế Vinh,Tiến Luật', 11, 1, 2, 2021, 'images/p172.jpg', 'Người phụ nữ nọ liên lạc với một thực thể siêu nhiên qua chiếc TV cũ trong nhà, khám phá ra một bí mật giết người và làm đảo lộn cuộc sống của chính mình.', 120, 52312, 'Không xác định'),
(175, 'KHU RỪNG BI THẢM', 'Tragic Jungle (2021)', 'Hoàn tất', 'Yulene Olaizola', 'Indira Rubie Andrewin, Gilberto Barraza, Mariano Tun Xool\r\n', 14, 1, 3, 2021, 'images/p173.jpg', 'Để thoát khỏi cuộc hôn nhân sắp đặt, một phụ nữ trốn vào sâu trong rừng rậm của người Maya – nơi thiên nhiên hoang dã hợp nhất giữa yếu tố siêu nhiên và con người.', 120, 50123, 'Không xác định'),
(176, 'CÔ VỢ NGHĨA HIỆP', 'Okusama wa, Tori Atsukai Chui (2021)', 'Hoàn tất', 'Sato Toya', 'Ayase Haruka,Nishijima Hidetoshi,Suzuki Kosuke', 2, 1, 4, 2021, 'images/p174.jpg', 'Câu chuyện trong phim bắt đầu khi nửa năm đã trôi qua, Yuki và Nami đang có cuộc sống mới yên bình tại thành phố Châu Hải, Trung Quốc dưới tên họ khác. Cô nàng vì một sự kiện mà trí nhớ đã hoàn toàn bị xóa sạch. Tưởng chừng như những tháng ngày này sẽ kéo dài mãi, nhưng tại nơi thành phố này đang bùng nổ cuộc khai thác tài nguyên năng lượng mới. Sự đối đầu giữa hai thế lực, một bên phản đối xây dựng phát triển để bảo tồn vẻ đẹp vùng biển và bên thị trưởng thành phố cùng các nhà đầu tư, càng ngày càng dữ dội sâu sắc. Dưới vỏ bọc phát triển nguồn tài nguyên năng lượng mới này, một âm mưu liên quan đến an ninh quốc gia với sự nhúng tay của những thế lực bên Nga rình rập…', 123, 21321, 'Không xác định'),
(177, 'THOÁT KHỎI MOGADISHU', 'Escape from Mogadishu (2021)', 'Hoàn tất', 'Ryu Seung Wan', 'Kim Yoon Seok, Jo In Sung, Heo Joon Ho, Koo', 10, 1, 5, 2021, 'images/p175.jpg', 'Thoát Khỏi Mogadishu dựa trên câu chuyện có thật về cuộc chạy trốn sinh tử của các nhân viên đại sứ quán Hàn Quốc và Triều Tiên tại thủ đô Somalia trong cuộc nội chiến năm 1991.\r\n ', 120, 52341, 'Không xác định'),
(178, 'SAS: BÁO ĐỘNG ĐỎ', 'SAS: Red Notice (2021)', 'Hoàn tất', 'Magnus Martens', 'Sam Heughan, Ruby Rose, Andy Serkis', 9, 1, 6, 2021, 'images/p176.jpg', 'SAS: Báo Động Đỏ - SAS: Red Notice xoay quanh câu chuyện về Tom Buckingham là chỉ huy của lực lượng đặc biệt, đang có nhiệm vụ hộ tống vị tiến sĩ Sophie Hart từ London đến Paris để cầu hôn. Tuy nhiên, khi con tàu đi sâu vào trong đường hầm, thì Grace Lewis cùng với băng tội phạm được trang bị vũ trang bắt đầu khống chế đoàn tàu và bắt giữ hàng trăm con tin. Grace Lewis đã yêu cầu đòi tiền chuộc còn nếu không thực hiện sẽ cho nổ tung cả đoàn tàu, không những vậy mà con vạch trần hết những bí mật mà chính phủ đã che giấu. Vì thế Tom là niềm hi vọng duy nhất của Sophie, chính phủ và những con tin trên chuyến tàu.\r\n\r\n', 120, 51238, 'Không xác định'),
(179, 'TRƯỜNG AN NHƯ CỐ', 'One and Only (2021)', 'Hoàn tất', 'Quách Hổ', 'Nhậm Gia Luân, Bạch Lộc, Lý Nghi Nho, Tô Mộng Vân, Ngô Mạn Tư, Vương Tinh Việt', 16, 1, 7, 2021, 'images/p177.jpg', 'Trường An Như Cố kể về câu chuyện tình yêu nhưng không thể đến được với nhau của Nam Chấn Vương Châu Sinh Thần và Thôi Thời Nghi, Thời Nghi trở thành Thái tử phi còn Châu Sinh Thần bị chết nơi sa trường.\r\n ', 247, 53278, 'Không xác định'),
(180, 'HÀNH TRÌNH TÌM CÔNG LÝ', 'Thimmarusu: Assignment Vali (2021)', 'Hoàn tất', 'Sharan Koppisetty', 'Satyadev Kancharana, Priyanka Jawalkar, Brahmaji', 8, 1, 8, 2021, 'images/p178.jpg', 'Hành Trình Tìm Công Lý kể về một luật sư chiến đấu với tham nhũng cả trong và ngoài phòng xử án.', 120, 41231, 'Không xác định'),
(181, 'THIẾU TÁ GROM: BÁC SĨ BỆNH DỊCH', 'Major Grom: Plague Doctor (2021)', 'Hoàn tất', 'Oleg Trofim', 'Tikhon Zhiznevskiy, Alexander Seteykin, Lyubov Aksyonova', 10, 1, 9, 2021, 'images/p179.jpg', 'Thiếu tá cảnh sát Igor Grom nổi tiếng khắp St.Petersburg vì tính cách xuyên suốt và thái độ không thể hòa giải đối với bọn tội phạm thuộc mọi kẻ thù. Nhưng mọi thứ thay đổi đáng kể với sự xuất hiện của một người trong chiếc mặt nạ của Bác sĩ bệnh dịch hạch. Tuyên bố rằng thành phố của mình là “bệnh dịch của sự vô pháp”, anh ta tiến hành “điều trị”, giết người, những người đã có lúc thoát khỏi sự trừng phạt với sự giúp đỡ của tiền bạc và địa vị cao trong xã hội. Xã hội bị kích động. Các nhân viên cảnh sát bất lực. Lần đầu tiên, Igor phải đối mặt với những khó khăn trong cuộc điều tra, kết quả có thể quyết định số phận của cả thành phố.', 120, 62125, 'Không xác định'),
(182, 'PHÒNG THÍ NGHIỆM MA', 'Ghost Lab (2021)', 'Hoàn tất', 'Paween Purijitpanya', 'Thanapob Leeratanakachorn,Paris Intarakomalyasut,Nuttanicha Dungwattanawanich', 14, 1, 10, 2021, 'images/p180.jpg', 'Sau khi gặp ma trong bệnh viện của họ, hai bác sĩ trở nên ám ảnh một cách nguy hiểm về việc thu thập bằng chứng khoa học để chứng minh sự tồn tại của ma.', 120, 34213, 'Không xác định'),
(183, 'BIỆT ĐỘI XA LỘ', 'The Highwaymen (2019)', 'Hoàn tất (7/7)', 'John Lee Hancock', 'Kevin Costner,Woody Harrelson,Kathy Bates', 9, 2, 1, 2019, 'images/p181.jpg', 'Hai cựu Biệt động Texas sắt đá được giao nhiệm vụ theo dõi và giết cặp đôi tội phạm khét tiếng Bonnie và Clyde trong bộ phim tội phạm dựa trên những sự kiện có thật này.', 24, 23214, 'Không xác định'),
(184, 'CHẠY TRỐN THANH XUÂN', 'Running away from youth (2019)', 'Hoàn tất (24/24)', 'Nguyễn Đức Hiếu, Vũ Minh Trí', 'Mạnh Trường, Huỳnh Anh, Hoa Thúy, Bình An, Minh Huyền, Lưu Đê Ly', 8, 2, 2, 2019, 'images/p182.jpg', 'An, một sinh viên cá tính, mạnh mẽ, phải sống với người mẹ ‘bất hảo’ vốn là một gái làng chơi, hiện chỉ cờ bạc đề đóm và luôn tìm cách lấy tiền của con. Trong một lần chạy trốn mẹ, An đến khu nhà trọ mới. Nơi đây, cô gặp Phi, và bị Phi hiểu lầm là thủ phạm trong vụ mất cắp xe máy của anh. Thái độ lạnh nhạt, sẵn sàng dùng vũ lực, và bất cần ánh mắt xung quanh của An, khiến Phi và mọi người khó chịu, thậm chí cả xóm trọ còn nghĩ cách đuổi An đi. Tuy nhiên, khi những sự việc lần lượt được làm sáng tỏ, Phi và mọi người mới hiểu An vô can trong những biến cố! Phi dần nảy sinh tình cảm với An thì cùng lúc anh lại phát hiện ra, An có mối quan hệ rất đặc biệt và khó hiểu với Nam, anh họ của mình. Sau này, khi Nam – An yêu nhau, tình yêu ấy cũng rất ngắn ngủi khi Nam không vượt qua được những rào cản từ quá khứ.', 24, 12321, 'Không xác định'),
(185, 'BA NGÀY VÀ MỘT CUỘC ĐỜI', 'Three Days And A Life (Trois jours et une vie) (2019)', 'Hoàn tất (12/12)', 'Nicolas Boukhrief', ' Charles Berling, Margot Bancilhon, Pablo Pauly, Sandrine Bonnaire', 10, 2, 3, 2019, 'images/p183.jpg', 'Giáng sinh năm 1999, tại một ngôi làng nhỏ yên bình ở Ardennes. Cuộc sống của một cậu bé tên Antoine sẽ sớm bị tàn phá bởi ba sự kiện bi thảm: cái chết của một con chó, sự biến mất của một đứa trẻ và một cơn bão lớn tàn phá.', 24, 23112, 'Không xác định'),
(186, 'PHÍA DƯỚI GẦM GIƯỜNG', 'Under Your Bed (2019)', 'Hoàn tất (6/6)', 'Mari Asato', 'Kanako Nishikawa, Kengo Kôra, Ryosuke Miyake, Yugo Mikawa', 8, 2, 4, 2019, 'images/p184.jpg', 'Phía Dưới Gầm Giường xoay quanh nhân vật Naoto, một chàng trai ít nói và sống nội tâm.Trong những tháng ngày đi học, anh luôn bị bạn bè và mọi người phớt lờ, và chỉ có duy nhất nữ sinh Chihiro là người đầu tiên gọi tên Naoto. Từ đó, anh luôn ước mơ được gặp lại Chihiro và cố gắng tìm kiếm cô ấy. 11 năm sau, Naoto tìm được chỗ ở của Chihiro nhưng mọi thứ đã khác hoàn toàn. Vì vậy, anh quyết định lẻn vào nhà cô và chui dưới gầm giường để được bên cạnh Chihiro.', 24, 12311, 'Không xác định'),
(187, 'QUÂN VƯƠNG BẤT DIỆT', 'The King: Eternal Monarch (2020)', 'Hoàn tất (16/16)', 'Baek Sang Hoon', 'Lee Min Ho, Kim Go Eun, Woo Doo Hwan', 2, 2, 5, 2019, 'images/p185.jpg', 'Quân Vương Bất Diệt​ là bộ phim xoay quanh câu chuyện về thế giới song song. Trong đó, Hoàng đế Lee Gon (Lee Min Ho) có nhiệm vụ cố ngăn chặn ác quỷ xâm nhập vào thế giới loài người. Song song với đó, ở thời hiện đại, nữ cảnh sát Jung Tae Eul (Kim Go Eun) cũng đang phải mạo hiểm để bảo vệ mạng sống của bản thân và gia đình. Cùng chung mục tiêu là đóng cánh cửa giữa 2 thế giới, Jung Tae Eul đã gặp được Hoàng đế Lee Gon, và cả hai bất ngờ nảy sinh tình cảm.', 30, 21512, 'Không xác định'),
(188, 'CON RẮN (PHẦN 1)', 'The Serpent (Season 1) (2021)', 'Hoàn tất (8/8)', 'Jenna Coleman', 'Tahar Rahim, Jenna Coleman, Billy Howle', 8, 2, 6, 2019, 'images/p186.jpg', 'Vào những năm 1970, kẻ giết người tàn nhẫn Charles Sobhraj săn đuổi những du khách khám phá \"đường mòn của những con hà mã\" ở Nam Á. Dựa trên những sự kiện có thật gây sốc.', 35, 21318, 'Không xác định'),
(189, 'LINH KIẾM TÔN', 'Linh Kiếm Tôn (2019)', 'Hoàn tất (222/222)', 'Không xác định', 'Không xác định', 6, 2, 7, 2019, 'images/p187.jpg', 'Cường giả bị tập kích, phản lão hoàn đồng, trở thành thiếu chủ phế vật. Kẻ thù từ đời trước kiếp này, quyết không bỏ qua. Sai lầm kiếp trước, kiếp này quyết tâm bù đắp. Linh Kiếm trường khiếu, thiên địa tam giới, ngã vi chí tôn!', 10, 21392, 'Không xác định'),
(190, 'LỜI NGUYỀN GIA TỘC', 'Clan curse (2019)', 'Hoàn tất (187/187)', 'Không xác định', 'Không xác định', 14, 2, 8, 2019, 'images/p188.jpg', 'Bộ phim khai thác đề tài tâm linh, nội dung xoay quanh những bí ẩn về một lời nguyền thảm khốc đã kéo dài hơn trăm năm qua ở gia tộc Ratangad tại Madhya Pradesh - Ấn Độ. Nguyên nhân dẫn đến lời nguyền khủng khiếp này là do cách đây 150 năm về trước, một vị vua của gia tộc Ratangad đã ra tay giết chết con của một người phụ nữ tên Lali - một tín đồ sùng đạo Kaalbhairav, sau đó ông còn làm nhục bà trước dân làng. Chính điều này đã khiến bà Lali uất hận nguyền rủa tất cả con trai của gia tộc Ratangad sẽ chết hết trước năm 30 tuổi và sẽ không có ai nối dõi ngai vàng.', 30, 33219, 'Không xác định'),
(191, 'NỮ HOÀNG NƯỚC NGA', 'The Great (Season 1) (2020)', 'Hoàn tất (10/10)', 'Tony McNamara ', 'Adam, GodleyBayo, Gbadamosi…Belinda, BromilowCharity, WakefieldDouglse', 1, 2, 9, 2019, 'images/p189.jpg', 'PHIM Nữ Hoàng Nước Nga-The Great (Season 1) (2020) [HD-VIETSUB] : The Great là serie truyền hình được dựa trên cuộc đời của Nữ hoàng Catherine II của Nga. Bộ phim là câu chuyện về Catherine - công nương người Đức - lên kế hoạch giành lấy ngôi báu từ vị Hoàng đế độc tài, vô dụng Peter II và khôi phục lại nước Nga.', 24, 23216, 'Không xác định'),
(192, 'YÊU CHÀNG CẤP CỨU', 'My Ambulance (2019)', 'Hoàn tất (16/16)', 'Naruebet Kuno', 'Sunny Suwanmethanont, Mai Davika Hoorne, Sky Wongravee Nateetorn, Top Napat Chokejindachai', 8, 2, 10, 2019, 'images/p190.png', 'Yêu Chàng Cấp Cứu xoay quanh chuyện tình 15 năm của cặp đôi Paeng và Tantawan, hai người yêu nhau lâu đến độ Tantawan luôn tin rằng tình yêu đó sẽ xóa nhòa mọi khoảng cách, giúp cô và Paeng có thể đến bên nhau dù đang cách xa hàng cây số. Và quả thật phép màu đã xuất hiện, Tan thực sự có khả năng triệu hồi Paeng mỗi lúc cô cần. Năng lực đặc biệt đã giúp tình yêu của Tan và anh bác sĩ siêu bận rộn trở nên khăng khít hơn. Thế nhưng với một kẻ phải lo chuyện sinh tử cho bao người như Paeng, chuyện đang yên đang lành lại bị người yêu triệu hồi chỉ vì nhớ nhung thì quả là có phần phiền phức. Mâu thuẫn dần lên tới đỉnh điểm khi Paeng ngày càng cảm thấy khó chịu vì những lần triệu hội vô cớ của cô người yêu mộng mơ', 60, 23197, 'Không xác định'),
(193, 'BIỆT ĐỘI TINH NGHỊCH (PHẦN 1)', 'The Mighty Ones (2020)', 'Hoàn tất (13/13)', 'Không xác định', 'Không xác định', 6, 2, 1, 2020, 'images/p191.jpg', 'Cuộc phiêu lưu vui nhộn của một nhóm sinh vật: một cành cây, một viên sỏi, một chiếc lá và một quả dâu tây sống trong một sân sau nhếch nhác thuộc về bộ ba con người nhếch nhác không kém mà họ lầm tưởng là thần thánh', 30, 41278, 'Không xác định'),
(194, 'HẢI ĐƯỜNG TRONG GIÓ', 'Hải Đường Trong Gió (2020)', 'Hoàn tất (7/7)', 'Nguyễn Hoàng Anh', 'Thúy Ngân ,Việt Hoàng, Anh Tú', 9, 2, 2, 2020, 'images/p192.jpg', ' Phim kể về hành trình nhiều sóng gió xoay quanh Hải Đường (Thúy Ngân) – cô gái có thanh xuân bất hạnh, không chỉ bị cha dượng là ông Dần (Trung Dũng) cưỡng bức mà còn bị hắn vu oan phải vào tù. Sau nhiều biến cố, Hải Đường vì muốn trả thù cha dượng của mình đã gia nhập thế giới ngầm, trở thành “chị đại” điều hành đường dây kinh doanh quán bar, vũ trường. Song song với câu chuyện báo thù đầy gây cấn là sự đấu tranh ẩn sâu trong tâm hồn Hải Đường, giữa việc biến nỗi đau và hận thù thành sức mạnh, đồng thời cũng phải chống lại chính nó để bản thân không đánh mất chính mình giữa lằn ranh thiện – ác.', 30, 31212, 'Không xác định'),
(195, 'NÀNG TIÊN CÁ Ở PARIS\r\n\r\n', 'A mermaid in Paris (2020)', 'Hoàn tất (5/5)', 'Mathias Malzieu\r\n\r\n', 'Nicolas Duvauchelle, Marilyn Lima\r\n\r\n', 11, 2, 3, 2020, 'images/p193.jpg', 'Không phải câu chuyện cổ tích bi thương của Andersen, A Mermaid In Paris mang đến hình ảnh hiện đại và tươi mới. Một người đàn ông bị phụ tình, sống trong buồn bã vô tình cứu được nàng tiên cá vô cùng xinh đẹp. Và rồi, tình yêu giữa họ nảy nở... ', 42, 41239, 'Không xác định'),
(196, 'THẾ GIỚI KHÔNG LỐI THOÁT', 'Alice In Borderland (2020)', 'Hoàn tất (8/8)', 'Không xác định', 'Yamazaki Kento, Tsuchiya Tao, Murakami Nijiro', 14, 2, 4, 2020, 'images/p194.jpg', 'Một nhóm du khách buồn chán được chuyển đến một vùng đất hoang song song như một phần của trò chơi sinh tồn. ', 50, 12309, 'Không xác định'),
(197, 'HƠN CẢ TÌNH BẠN', 'More Than Friends (2020)', 'Hoàn tất (6/6)', 'Choi Sung Bum', 'Ong Seong Wu, Shin Ye Eun, Kim Dong Jun, Pyo Ji Hoon, Baek Soo Min, Choi Chan Ho', 8, 2, 5, 2020, 'images/p195.jpg', 'Hơn Cả Tình Bạn - More Than Friends, More Than Friends 2020 Hoàn Tất (16/16) HD Mười Năm Trước, Kyung Woo Yeon Vẫn Hồn Nhiên Và Vô Tư Như Bất Kỳ Tuổi Mười Tám Nào. Với ước Mơ, Hoài Bão Và Trái Tim Sẵn Sàng Yêu, Việc Cô ấy Yêu Một Ai đó Chỉ Còn Là Vấn đề Thời Gian. Và Mùa Thu Cô ấy đã Làm; Cho Bạn Của Cô ấy, Lee Soo. Không Thể Kìm được Cảm Xúc Của Mình Trong Lòng, Cô đã Thú Nhận Với Anh Trước Khi Anh Rời đi Và được Bạn Bè Khoanh Vùng. Bảy Năm Sau, Cô Thử Vận ​​may Một Lần Nữa Nhưng Lại Bị Từ Chối. Cô Quyết Tâm Vượt Qua điều Mà Cô Coi Là Lời Nguyền Không Thể Trải Nghiệm Tình Yêu Này. Một Ngày Cô đơn ở Jeju, Cô Tự Tin Tuyên Bố Rằng Cô Không Còn Thích Anh Nữa Và Quyết định Rời Xa Anh. Anh ấy Cũng Khiến Hàn Quốc đau Nhói Trong Lòng. ', 32, 26862, 'Không xác định'),
(198, 'BÓNG MA ANH QUỐC', 'Peaky Blinder (2020)', 'Hoàn tất (12/12)', 'Không xác định', 'Paul Anderson, Sam Neill, Helen McCrory', 8, 2, 6, 2020, 'images/p196.jpg', '\"Already broken\" - là trái tim của một người đàn ông thì ngay từ lúc trở thành một người đàn ông, nó vốn đã phải tan nát rồi.', 60, 52319, 'Không xác định'),
(199, 'ĐẸP TRAI LÀ SỐ MỘT', 'Intense Love (2020)', 'Hoàn tất (25/25)', 'Liu Yu Fan', 'Không xác định', 1, 2, 7, 2020, 'images/p197.jpg', 'Đẹp Trai Là Số Một xoay quanh chuyện tình ngọt ngào giữa nữ minh tinh mê trai đẹp và chàng bác sĩ lạnh lùng. Tô Căng Bắc - MC, diễn viên nổi tiếng đi lên nhờ thực lực, từ fan hâm mộ cho đến người trong giới đều không hay biết cô vốn là tiểu thư nhà họ Tô danh tiếng lẫy lừng ở phương nam. Đại minh tinh họ Tô là người như thế nào? Cô chính là một người có niềm đam mê vô hạn với cái đẹp, bao gồm cả… trai đẹp. Trong một lần giúp nam thần mà cô đang mê mẩn dạo gần đây chạy trốn khỏi đám phóng viên săn tin, Tô Căng Bắc xui xẻo gặp tai nạn giao thông và phải nằm viện hai tháng. Không ngờ bước ngoặt này lại dẫn đến cuộc gặp gỡ định mệnh giữa cô với Chu Thời Uẩn - bác sĩ trị liệu cho cô và cũng chính là vị hôn phu được gia đình mai mối, người mà Tô Căng Bắc không thèm để ý suốt hai mươi năm qua, thậm chí còn căm ghét đến tận xương tủy vì dám bỏ rơi cô trong hôn lễ. ', 24, 27345, 'Không xác định'),
(200, 'BA CHÀNG NGỐC', '3 Idiots (2020)\r\n', 'Hoàn tất (3/3)', 'Rajkumar Hirani', 'amir Khan, Madhavan, Mona Singh', 4, 2, 8, 2020, 'images/p198.jpg', 'Bộ phim Ba Chàng Ngốc kể về tình bạn của ba anh chàng Farhan, Raju và Rancho từ khi họ còn là sinh viên đến khi trưởng thành. Trong thời gian ngồi trên giảng đường, Rancho đã có ảnh hưởng rất lớn đến cuộc sống, tương lai của Farhan và Raju. Sau khi ra trường, Rancho đột nhiên biến mất. 10 năm sau, khi tìm được manh mối về nơi sinh sống của cậu bạn thân năm xưa, Farhan và Raju quyết định lên đường tìm Rancho...\r\n ', 90, 53298, 'Không xác định'),
(201, 'THỢ SĂN QUÁI VẬT', 'The Witcher (Season 2) (2020)', 'Hoàn tất (12/12)', 'Lauren Schmidt', 'Henry Cavill, Anya Chalotra, Freya Allan', 10, 2, 9, 2020, 'images/p199.jpg', 'Thợ Săn Quái Vật kể về Geralt xứ Rivia, một thợ săn quái vật đột biến, dấn thân vào hành trình đến với số phận trong thế giới hỗn loạn mà con người còn ác độc hơn cả quỷ dữ.\r\n ', 60, 42131, 'Không xác định'),
(202, 'CHIÊU TRÒ NGUYÊN THỦY', 'Leh Bunpakarn (2020)', 'Hoàn tất (28/28)', 'Fuse Kittisak', 'James Jirayu, Natapohn Tameeruks, Poh Nattawut Skidjai, Oh Anuchit Sapunpohng', 8, 2, 10, 2020, 'images/p200.jpg', 'Chiêu Trò Nguyên Thủy xoay quanh Plerngfah (James Jirayu), có khả năng xem được tiền kiếp của mọi người từ khi còn nhỏ. Cha mẹ của anh quyết định chuyển đến sống ở Mỹ để có thể chữa trị triệu chứng kì lạ của anh để anh không còn nhìn thấy những hình ảnh kỳ lạ hoặc những giấc mơ. Hai mươi năm sau, Plerngfah trở về sống ở Thái Lan và làm ký giả đài truyền hình. Một số chuyện xảy ra khiến cho anh gặp gỡ Sitang (Taew Nattaphon), một giảng viên đại học ngành khảo cổ. Sau đó, khả năng nhìn thấy tiền kiếp của Plerngfah được trở lại. Plerngfah chắc chắn rằng Sitang là định mệnh của anh và họ đã ở bên nhau trong nhiều kiếp trước. Tuy nhiên, những kẻ thù đã gây sự hỗn loạn trong kiếp trước của họ vẫn tiếp tục theo họ đến thế giới hiện đại và thề chia rẽ Plerngfah và Sitang một lần nữa.', 45, 21398, 'Không xác định'),
(203, 'HỐ ĐỊA NGỤC', 'Superdeep (2021)', 'Hoàn tất (6/6)', 'Arseny Syuhin', 'Milena Radulovic, Sergey Ivanyuk, Nikolay', 14, 2, 1, 2021, 'images/p201.jpg', 'Hố khoan Kola Superdeep của Nga được khoan sâu 12.000m vào lòng đất – là cơ sở nghiên cứu bí mật sâu nhất thế giới được ghi lại cho đến nay. Vào năm 1984, các nhà khoa học bắt đầu nghe được những âm thanh lạ vọng từ hố sâu Kola và quyết định đóng cửa cơ sở nghiên cứu này. Một nhóm nghiên cứu đã quyết định thám hiểm hố khoan để tìm ra bí mật mà nơi đây đang ẩn giấu. Tuy nhiên, từng thành viên trong nhóm nghiên cứu đều lần lượt bỏ mạng. Những gì họ tìm thấy kinh khủng hơn bất cứ điều từng được ghi chép lại về chiếc hố tử thần này.', 60, 36312, 'Không xác định'),
(204, 'CON ĐƯỜNG MẸ ĐƯỜNG', 'Sugar Boy Sugar Mommy (2021)', 'Hoàn tất (6/6)', 'Không xác định', 'Không xác định', 8, 2, 2, 2021, 'images/p202.jpg', 'Con Đường Mẹ Đường - Sugar Boy Sugar Mommy, Sugar Boy Sugar Mommy 2021 HD Nối tiếp thành công của Sugar Daddy vs. Sugar Baby năm 2020, phim đi sâu vào thế giới sugar, đặt câu hỏi lớn về tình yêu chân thật liệu có còn tồn tại được giữa những dục vọng, tiền bạc và lừa dối.', 45, 12321, 'Không xác định'),
(205, 'TRỤC QUỶ', 'The Banishing (2021)', 'Hoàn tất (5/5)', 'Christopher Smith', 'Không xác định', 14, 2, 6, 2021, 'images/p203.png', 'Phim Trục Quỷ lấy bối cảnh nước Anh đầu những năm 1930 khi Mục sư Linus cùng vợ là Marianne và con gái Adelaide chuyển tới một thị trấn nhỏ ở Anh. Linus được Giáo hội giao nhiệm vụ khôi phục đức tin của dân làng sau khi gia đình Mục sư trước biến mất một cách bí ẩn ngay trong chính căn nhà mà anh vừa dọn vào...', 60, 12547, 'Không xác định'),
(206, 'NHÀ TÙ TRỰC QUAN', 'Visual prision (2021)', 'Hoàn tất (45/45)', 'Takeshi Furuta', 'Không xác định', 6, 2, 4, 2021, 'images/p204.jpg', 'Yuki Ange không thể phù hợp với quê hương của mình, vì vậy anh ấy rời đi thăm Harajuku, với hy vọng được xem nghệ sĩ yêu thích của mình biểu diễn. Tuy nhiên, tại đó, anh đã chứng kiến ​​một trận chiến âm nhạc giữa các ban nhạc visual-kei', 24, 23123, 'Không xác định'),
(207, 'TRÒ CHƠI CON MỰC', 'Squid Game (2021)\r\n', 'Hoàn tất (9/9)', 'Hwang Dong Hyuk', 'Lee Jung Jae, Park Hae Soo, Heo Sung Tae', 14, 2, 5, 2021, 'images/p205.jpg', 'Trò Chơi Con Mực là câu chuyện về hàng trăm người chơi kẹt tiền chấp nhận một lời mời kỳ lạ: thi đấu trong các trò chơi trẻ con. Đón chờ họ là một giải thưởng hấp dẫn – và những rủi ro chết người.', 50, 52432, 'Không xác định'),
(208, 'TRUY TÌM HUNG THỦ (PHẦN 2)', 'Mortel (Season 2) (2021)', 'Hoàn tất (6/6)', 'Frédéric Garcia', 'Carl Malapa, Nemo Schiffman, Manon Bresch', 11, 2, 3, 2021, 'images/p206.jpg', 'Truy Tìm Hung Thủ (Phần 2) - Mortel (Season 2), Mortel (Season 2) 2021 Hoàn tất (6/6) Season 2 Một nhóm thanh thiếu niên Pháp bị ràng buộc với nhau bởi một thế lực siêu nhiên.', 50, 32143, 'Không xác định'),
(209, 'LIỆT HỎA KIÊU SẦU', 'Lie Huo Jiao Chou (2021)', 'Hoàn tât (104/104)', 'Không xác định', 'Không xác định', 6, 2, 7, 2021, 'images/p207.jpg', 'Liệt Hỏa Kiêu Sầu kể về trong một thế giới không tưởng, có một nhóm nhỏ các \"người mang năng lượng đặc thù\" bí mật tồn tại, gọi tắt là người đặc năng. Họ không để lộ bản thân trước mặt người thường. Họ có một tổ chức tự trị gọi là Dị khống cục, chịu trách nhiệm quản lí những người đặc năng để họ không gây ra những hành vi phản tự nhiên, giữ gìn trật tự xã hội. Nhưng theo thời gian, nhóm người đặc năng cũng bắt đầu phân hóa về lập trường. Có người muốn bảo trì cân bằng hòa bình, có người muốn lợi dụng năng lượng đặc biệt để tư lợi. Mâu thuẫn hết sức căng thẳng.', 20, 23682, 'Không xác định'),
(210, 'CUỘC ĐUA TÌNH ÁI', 'Love race (2021)', 'Hoàn tất (247/247)', 'Noel Smith', 'Không xác định', 8, 2, 8, 2021, 'images/p208.png', 'Siêu phẩm truyền hình Ấn Độ Ishq Mein Marjawan đã tung ra phần 2 có tên là Cuộc đua tình ái với những thước phim mãn nhãn về cuộc chiến giữa tình yêu và thù hận.', 40, 12325, 'Không xác định'),
(211, 'KẺ ĐEO BÁM (PHẦN 3)', 'You (Season 3) (2021)', 'Hoàn tất (12/12)', 'Không xác định', 'Penn Badgley, Victoria Pedretti, Elizabeth Lail, Shay Mitchell, Jenna Ortega, James Scully', 1, 2, 9, 2021, 'images/p209.png', 'Kẻ Đeo Bám (Phần 3) - YOU (Season 3), YOU (Season 3) 2021 Full (10/10) Season 3 Một Người đàn ông Trẻ Tuổi Quyến Rũ Một Cách Nguy Hiểm, Bị ám ảnh Mạnh Mẽ đã đi đến Những Biện Pháp Cực đoan để Chèn Mình Vào Cuộc Sống Của Những Người Mà Anh Ta đang Phải Chịu đựng.', 45, 12621, 'Không xác định'),
(212, 'CÔ NÀNG TINH NGHỊCH', 'My Little Saucy Girl (2021)', 'Hoàn tất (31/31)', 'Không xác định', 'Phet Thakrit Tawanpong, Tita Chayanit Chayjaroen', 2, 2, 10, 2021, 'images/p210.jpg', 'Cô Nàng Tinh Nghịch kể về Lukkaew là một cô gái luôn nuôi trong mình mơ ước xây dựng buôn làng theo phương pháp canh tác bền vững thân thiện với môi trường. Cô luôn nỗ lực thay đổi suy nghĩ của dân làng nhưng không một ai quan tâm. Cho đến một ngày, Saran – Trạm trưởng Trạm kiểm lâm Thung Chang San cùng với người bạn thân Thanu chuyển đến làm việc tại đây. Hai người xảy ra xung đột ngay từ lần gặp đầu tiên nhưng đó cũng chính là khi câu chuyện tình thú vị bắt đầu.', 45, 51212, 'Không xác định');

-- --------------------------------------------------------

--
-- Table structure for table `nation`
--

CREATE TABLE `nation` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nation`
--

INSERT INTO `nation` (`id`, `name`) VALUES
(1, 'Mỹ'),
(2, 'Việt Nam'),
(3, 'Pháp'),
(4, 'Nhật Bản'),
(5, 'Hàn Quốc'),
(6, 'Anh'),
(7, 'Trung Quốc'),
(8, 'Ấn Độ'),
(9, 'Nga'),
(10, 'Thái Lan');

-- --------------------------------------------------------

--
-- Table structure for table `nav-menu`
--

CREATE TABLE `nav-menu` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `handle` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nav-menu`
--

INSERT INTO `nav-menu` (`id`, `name`, `handle`) VALUES
(1, 'thể loại', 'category'),
(2, 'quốc gia', 'nation'),
(3, 'phim lẻ', 'single-movie'),
(4, 'phim bộ', 'series-movie'),
(5, 'phim chiếu rạp', 'theater-movie');

-- --------------------------------------------------------

--
-- Table structure for table `series-movie`
--

CREATE TABLE `series-movie` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `series-movie`
--

INSERT INTO `series-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Bộ 2021', 2021),
(2, 'Phim Bộ 2020', 2020),
(3, 'Phim Bộ 2019', 2019),
(4, 'Phim Bộ 2018', 2018),
(5, 'Phim Bộ 2017', 2017),
(6, 'Phim Bộ 2016', 2016),
(7, 'Phim Bộ 2015', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `single-movie`
--

CREATE TABLE `single-movie` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `single-movie`
--

INSERT INTO `single-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Lẻ 2021', 2021),
(2, 'Phim Lẻ 2020', 2020),
(3, 'Phim Lẻ 2019', 2019),
(4, 'Phim Lẻ 2018', 2018),
(5, 'Phim Lẻ 2017', 2017),
(6, 'Phim Lẻ 2016', 2016),
(7, 'Phim Lẻ 2015', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `id` int(11) NOT NULL,
  `rateIndex` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`id`, `rateIndex`) VALUES
(1, 3),
(2, 5),
(3, 3),
(4, 2),
(5, 3),
(6, 4),
(7, 3),
(8, 4),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 2),
(14, 4),
(15, 5),
(16, 3),
(17, 4),
(18, 3),
(19, 1),
(20, 1),
(21, 4),
(22, 3),
(23, 2),
(24, 4),
(25, 4),
(26, 3),
(27, 3),
(28, 5),
(29, 5),
(30, 4),
(31, 5),
(32, 5),
(33, 5);

-- --------------------------------------------------------

--
-- Table structure for table `theater-movie`
--

CREATE TABLE `theater-movie` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf32 NOT NULL,
  `year` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theater-movie`
--

INSERT INTO `theater-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Chiếu Rạp 2021', 2021),
(2, 'Phim Chiếu Rạp 2020', 2020),
(3, 'Phim Chiếu Rạp 2019', 2019),
(4, 'Phim Chiếu Rạp 2018', 2018),
(5, 'Phim Chiếu Rạp 2017', 2017),
(6, 'Phim Chiếu Rạp 2016', 2016),
(7, 'Phim Chiếu Rạp 2015', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `type-movie`
--

CREATE TABLE `type-movie` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type-movie`
--

INSERT INTO `type-movie` (`id`, `name`, `handle`) VALUES
(1, 'Phim lẻ', 'single-movie'),
(2, 'Phim bộ', 'series-movie'),
(3, 'Phim chiếu rạp', 'theater-movie');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `usertype` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `username`, `fullname`, `password`, `email`, `birthday`, `sex`, `usertype`) VALUES
(1, 'Van', '', '$2y$10$/YOEwMOBA2LOjjYDJBNJo.V', '', '2018-11-13', 'female', 99),
(3, 'dungtran2001', 'Tran Van Hung', '123456789aZ@', 'dungtran061101@gmailcom', '2021-11-09', 'male', 99),
(4, 'quang', '', '1234', 'quangvo33@gmail.com', '2018-11-04', 'male', 99),
(5, 'trinh', '', '1234', 'chinhchinh@gmail.com', '2018-11-04', 'female', 20),
(6, 'thien', '', '1234', 'thienle4444@gmail.com', '2018-11-05', 'male', 20);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `type` int(2) NOT NULL,
  `typename` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`type`, `typename`) VALUES
(10, 'Guest'),
(20, 'Member'),
(99, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`,`film_id`),
  ADD KEY `film_id` (`film_id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nation_id` (`nation_id`),
  ADD KEY `category` (`category_id`);

--
-- Indexes for table `nation`
--
ALTER TABLE `nation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nav-menu`
--
ALTER TABLE `nav-menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series-movie`
--
ALTER TABLE `series-movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `single-movie`
--
ALTER TABLE `single-movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theater-movie`
--
ALTER TABLE `theater-movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type-movie`
--
ALTER TABLE `type-movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_ibfk_1` (`usertype`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `nation`
--
ALTER TABLE `nation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nav-menu`
--
ALTER TABLE `nav-menu`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `series-movie`
--
ALTER TABLE `series-movie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `single-movie`
--
ALTER TABLE `single-movie`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `theater-movie`
--
ALTER TABLE `theater-movie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `type-movie`
--
ALTER TABLE `type-movie`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `episode_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`);

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`nation_id`) REFERENCES `nation` (`id`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
