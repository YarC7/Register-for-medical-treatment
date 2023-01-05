
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liên hệ</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .danhxung{
            position: relative;
        }
        .ten{
            float:left;
        }
    </style>
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
    
    <fieldset>
        <h1>
            Liên Hệ
        </h1>
        <form action="index.php">
            <span>
                <Label>Cơ sở</Label>
                <select name="" id="">
                    <option value="" disabled>Chọn cơ sở</option>
                    <option value="">Cơ sở Hà Nội</option>
                    <option value="">Cơ sở TP. Hồ Chí Minh</option>
                </select>
            </span>
            <div class="danhxung">
                <span >
                    <Label>Danh xưng</Label>
                    <select name="" id="">
                        <option value="">Ông</option>
                        <option value="">Bà</option>
                        <option value="">Anh</option>
                        <option value="">Chị</option>
                    </select>                            
                </span>
                
            </div>
            <label  for="fullname">Nhập họ và tên  của bạn: <input id="fullname" name="fullname" type="text" placeholder="Họ và tên" required /></label>

            <label for="phoneNumber">Nhập số liên lạc của bạn: <input id="phoneNumber" name="phoneNumber" type="text" placeholder="Số điện thoại" required /></label>
            <label for="address">Nhập địa chỉ liên lạc của bạn: <input id="address" name="address" type="text" placeholder="Địa chỉ liên lạc" required /></label>
            <label for="">Để lại lời nhắn
                <textarea name="" id="" cols="30" rows="10">

                </textarea>
            </label>
            <button type="submit" name="submit">
                Gửi
            </button>
            

            <h2>Hoặc liên hệ trực tiếp với chúng tôi qua :</h2>
            <li><a href="tel: 0797985919">SDT Liên hệ : 0797985919</a></li>
            <li><a href="mailto: nguyenduccanh177@gmail.com">Email : nguyenduccanh177</a></li>
            <li><a href="mail :0797985919@txt.att.net">sadsadsa</a></li>


    
        
        </form>
    </fieldset>
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