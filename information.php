<?php
$serverName ="127.0.0.1";
$userName ="root";
$pwd ="";
$nameDB = "hospital";

$conn = mysqli_connect($serverName, $userName, $pwd, $nameDB);

if ($conn === false){
    echo "ket noi that bai";    
}
if(isset($_POST["submit"])){
    $hoten = $_POST["fullname"];
    $gioitinh = $_POST["gender"];
    $namsinh = $_POST["year"];
    $diachi = $_POST["address"];
    $sdt = $_POST["phoneNumber"];
    $ngaykham = $_POST["date"];
    $giokham = $_POST["hour"];
    $mota = $_POST["tinhtrang"];
    $maxacthuc = $_POST["accesscode"];
    $trangthai = $_POST["sittuation"];
    $MaBS =  $_POST["taskOption"];
    
    if(isset($hoten) && isset($gioitinh) && isset($namsinh) && isset($diachi) && isset($sdt)  && isset($ngaykham) && isset($giokham) && isset($mota) && isset($maxacthuc) && isset($trangthai) && isset($MaBS)){
        $sql ="INSERT INTO `phieuhen` (`maphieu` , `hoten`, `gioitinh`, `namsinh`, `diachi`, `sdt`, `ngaykham`, `giokham`, `mota`, `maxacthuc`, `trangthai` , `MaBS`) VALUES(NULL, '$hoten', '$gioitinh' , '$namsinh' , '$diachi', '$sdt' , '$ngaykham', '$giokham' , '$mota', '$maxacthuc', '$trangthai', '$MaBS')";
        mysqli_query($conn, $sql);
        echo "ban da them thanh cong'";
        header("Location: information.php");
    }

}
?>
<!DOCTYPE html>
<html lang="en"> 
    <head> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width intial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    </head> 
    <body>
        <ul>
            <li><a href="main.php">Home</a></li>
            <li><a href="services.php">Dịch vụ</a></li>
            <li style=" float:  right;"><a href="checkin4.php">Kết quả đăng ký khám bệnh</a></li>
            <li style=" float:  right;"><a href="login.php">Đăng Nhập</a></li>
            <li style=" float:  right;"><a href="registration.php">Đăng Ký</a></li>
            <li style=" float:  right;"><a href="index.php">Đăng ký khám bệnh</a></li>

            <li><a href="#forum">Forum</a></li>   
            <li><a href ="contact.php">Liên hệ</a></li> 
            <li><a href="about.php">Về chúng tôi</a></li> 
        </ul>
        <p>Vui lòng đọc kỹ và  điền đầy đủ thông tin dươi dây</p>
    <form action="information.php" method="post" enctype="multipart/form-data">
            <fieldset>
                <label for="fullname">Nhập họ và tên  của bạn: <input id="fullname" name="fullname" type="text" placeholder="Họ và tên" required /></label>        
                <label for="email">Nhập email của bạn: <input id="email" name="email" type="email" placeholder="Email" required /></label>
                <label for="year">Năm sinh:
                    <input type="number" min="1900" max="2099" step="1" value="2016" id="year" name="year" placeholder="Nhập  năm sinh">
                </label>
                <label for="phoneNumber">Nhập số liên lạc của bạn: <input id="phoneNumber" name="phoneNumber" type="text" placeholder="Số điện thoại" required /></label>
                <label for="address">Nhập địa chỉ liên lạc của bạn: <input id="address" name="address" type="text" placeholder="Địa chỉ liên lạc" required /></label>
                <label for="gender" name="gender">Giới tính:
                    <label for="gender"><input id="gender" value="Nam" type="radio" name="gender" class="inline" required/> Nam </label>
                    <label for="gender"><input id="gender" value="Nữ" type="radio" name="gender" class="inline" required/> Nữ</label>
                </label>
                <fieldset>
                <div class="box_dathen" id="box_dathen">
                    <select id="chuyenkhoa" name="taskOptions" >
                        <option required disabled="disabled" selected="selected" value="">Chọn khoa khám bệnh</option>
                        <option value="1">Chuyên khoa Chấn thương chỉnh hình</option>
                        <option value="2">Chuyên khoa Cơ xương khớp</option>
                        <option value="3">Chuyên khoa Da Liễu</option>
                        <option value="4">Chuyên khoa Dinh Dưỡng</option>
                        <option value="5">Chuyên khoa Nam học - Tiết Niệu</option>
                        <option value="6">Chuyên khoa Nội tiết</option>
                        <option value="7">Chuyên khoa Nhi</option>                       
                        <option value="8">Chuyên khoa Nội tổng hợp</option>
                        <option value="9">Chuyên khoa Sơ sinh</option>
                        <option value="10">Chuyên khoa Sản phụ khoa</option>
                        <option value="11">Chuyên khoa Tai mũi họng</option>
                        <option value="12">Chuyên khoa Thần kinh</option>
                        <option value="13">Chuyên khoa Tim mạch</option>
                        <option value="14">Chuyên khoa Tiêu hóa - Gan mật tụy</option>
                        <option value="15">Chuyên khoa Tâm thần</option>
                        <option value="16">Chuyên khoa Ung bướu</option>
                        <option value="17">Chuyên khoa hô hấp</option>
                        <option value="18">Chuyên khoa hồi sức tích cực</option>
                        <option value="19">Chuyên khoa mắt</option>
                        <option value="20">Chuyên khoa ngoại tiêu hóa</option>
                        <option value="21">Chuyên khoa ngoại tổng hợp</option>
                        <option value="22">Khoa Chẩn đoán hình ảnh</option>
                        <option value="23">Khác</option>
                        <option value="24">Trung tâm hỗ trợ sinh sản</option>


                    </select>
                    <select  id="bacsi" name="taskOption" required >
                        <option value="">Chọn Bác sĩ khám bệnh</option>
                    </select>
                    <select  id="price" name="" >
                        <option value="">Giá tham khảo</option>
                    </select>
                </div>     
                <br>
                <hr>
                            
            </fieldset>
                <label for="accesscode">Nhập mã xác thực của bạn: <input id="accesscode" name="accesscode" type="text" placeholder="Mã xác thực" required /></label>
                <label for="datetime">Ngày hẹn khám chữa bệnh:
                    <input style="background-color:#fff;color:black" type="date" id="date" name="date" required>
                    <input style="background-color:#fff;color:black" type="time" id="hour" name="hour" required >

                </label>
                <label for="tinhtrang">mô tả ngắn gọn tình trạng của bạn: 
                    <textarea name="tinhtrang" id="tinhtrang" cols="30" rows="10" required></textarea>
                </label>
                <label for="sittuation">mô tả trạng thái hiện tại của bạn: 
                    <textarea name="sittuation" id="sittuation" cols="30" rows="10" required></textarea>
                </label>
                <label for="terms-and-conditions" name="terms-and-conditions"></label>
                <input id="terms-and-conditions" type="checkbox" required name="terms-and-conditions" class="inline" /> Tôi chấp nhận  <a href="https://www.freecodecamp.org/news/terms-of-service/">các điều khoản và điều kiện</a>
                
                
            </fieldset>
            
            <button type="submit" name="submit">
                Nhập thông tin người khám bệnh
            </button>
        </form>
        <button class="nut-mo-chatbox" onclick="moForm()">Chat</button>
        <div class="Chatbox" id="myForm">
        <form action="" class="form-container">
            <h1>Chatbox</h1>

            <label for="msg"><b>Lời Nhắn</b></label>
            <textarea placeholder="Bạn hãy nhập lời nhắn.." name="msg" required></textarea>

            <button type="submit" class="btn">Gửi</button>
            <button type="button" class="btn nut-dong-chatbox" onclick="dongForm()">Đóng</button>
        </form>
        <footer>
        <p>Nguyễn Đức Cảnh<br>
        <p>Nhóm 7<br>
        <a href="mailto:nguyenduccanh177@gmail.com">nguyenduccanh177@gmail.com</a></p>
      </footer>
    </body> 
    <script src="./scripts.js"></script> 

</html> 