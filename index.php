<?php
    $serverName ="127.0.0.1";
    $userName ="root";
    $pwd ="";
    $nameDB = "hospital";
    $conn = mysqli_connect($serverName, $userName, $pwd, $nameDB);
    if ($conn === false){
        echo "ket noi that bai";
    }
    $sql ="SELECT * FROM `phieuhen`";

    $query = mysqli_query($conn,$sql);
    
?>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width intial-scale=1.0">
        <title>
            Đăng ký khám chữa bệnh
        </title>
        <link rel="stylesheet" href="style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="style.css">
        

        
    </head>
    <body>
        <div class="logo-vlu">
            <!--<img src="http://www.vanlanguni.edu.vn/images/logos/logo-vlu.png" width="100%">
            -->    
        </div>  
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
        <h1>Đăng Ký Khám Chữa Bệnh</h1>
        <p>Vui lòng đọc kỹ và  điền đầy đủ thông tin dưới dây</p>
        <form action=''>
          <fieldset>
            <label for="location">Chọn địa điểm khám: 
                <label for="hanoi"><input id="hanoi" type="radio" name="location-type" class="inline" /> Hà Nội </label>
                <label for="tphcm"><input id="tphcm" type="radio" name="location-type" class="inline" /> TP.Hồ Chí Minh</label>
            </label>
            <hr>
            <br>
            <label for="location">Chọn dịch vụ khám bệnh: 
                <label for="intime"><input id="intime" type="radio" name="service-type" class="inline" /> Khám trong giờ </label>
                <label for="outitme"><input id="outitme" type="radio" name="service-type" class="inline" /> Khám ngoài giờ</label>
                <label for="online"><input id="online" type="radio" name="service-type" class="inline" /> Khám online</label>
            </label>
            
          </fieldset>
          <fieldset>
            <div class="box_dathen" id="box_dathen">
                <select id="chuyenkhoa" name="taskOption" >
                <option disabled="disabled" selected="selected" value="">Chọn khoa khám bệnh</option>
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
                        <option value="16">Chuyên khoa Nhi</option>
                        <option value="17">Chuyên khoa Ung bướu</option>
                        <option value="18">Chuyên khoa hô hấp</option>
                        <option value="19">Chuyên khoa hồi sức tích cực</option>
                        <option value="20">Chuyên khoa mắt</option>
                        <option value="21">Chuyên khoa ngoại tiêu hóa</option>
                        <option value="22">Chuyên khoa ngoại tổng hợp</option>
                        <option value="23">Khoa Chẩn đoán hình ảnh</option>
                        <option value="24">Khác</option>
                        <option value="25">Trung tâm hỗ trợ sinh sản</option>
                </select>
                <select  id="bacsi" name="" >
                    <option value="">Chọn Bác sĩ khám bệnh</option>
                </select>
                <select  id="price" name="" >
                    <option value="">Giá tham khảo</option>
                </select>
            </div>     
            <br>
            <hr>
                           
          </fieldset>
            <button type="submit"><a href="information.php">Nhập thông tin người khám bệnh</a></button>
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
        </div>
    </body>
      <footer>
        <p>Nguyễn Đức Cảnh<br>
        <p>Nhóm 7<br>
        <a href="mailto:nguyenduccanh177@gmail.com">nguyenduccanh177@gmail.com</a></p>
      </footer>
      <script src="./script.js"></script>     

</html>