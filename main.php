<?php
    $serverName ="127.0.0.1";
    $userName ="root";
    $pwd ="";
    $nameDB = "hospital";
    $conn = mysqli_connect($serverName, $userName, $pwd, $nameDB);
    if ($conn === false){
        echo "ket noi that bai";
    }
    

    
    
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width intial-scale=1.0">
        <link rel="stylesheet" href="style.css">
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
        <div>
            <fieldset>
                <h1>
                    Chào mừng bạn đến trung tâm đăng ký khám bệnh phòng khám đa khoa quốc tế.
                </h1>
                <hr>
                <h1>Bạn muốn đăng ký khám bệnh ?</h1>
                <br>
    
    
                <button type="submit"><a href="index.html">Nhấn vào đây để tiền hành đăng ký</a></button>
            </fieldset>

            <br>
            <fieldset>

                <h1>Bạn muốn tìm tiếm kết quả đăngk ý khám bệnh của mình ?</h1>
                <button type="submit"><a href="result.html">Nhấn vào đây để tiền hành kiểm tra kết quả</a></button>

            </fieldset>
        </div>
        <button class="nut-mo-chatbox" onclick="moForm()">Chat</button>
        <div class="Chatbox" id="myForm">
        <form action="" class="form-container">
            <h1>Chatbox</h1>

            <label for="msg"><b>Lời Nhắn</b></label>
            <textarea placeholder="Bạn hãy nhập lời nhắn.." name="msg" required></textarea>

            <button type="submit" class="btn">Gửi</button>
            <button type="button" class="btn nut-dong-chatbox" onclick="dongForm()">Đóng</button>
        </form>
    </body>
    <script src="./script.js"></script>     

</html>