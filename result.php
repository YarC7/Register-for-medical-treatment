<?php
    $serverName ="127.0.0.1";
    $userName ="root";
    $pwd ="";
    $nameDB = "hospital";
    $conn = mysqli_connect($serverName, $userName, $pwd, $nameDB);
    if ($conn === false){
        echo "ket noi that bai";
    }
    $maxacthuc = @$_POST["accesscode"];

	$sql = "SELECT * FROM `phieuhen` where `maxacthuc` like '%$maxacthuc%'";
	$query = mysqli_query($conn,$sql);
	$n = mysqli_num_rows($query);

    $lenh = "SELECT * FROM `ketqua` where `Maphieu` like '%$maxacthuc%'";
    $kq = mysqli_query($conn,$lenh);
    $n1 = mysqli_num_rows($kq);
    if($maxacthuc = @$_POST["accesscode"]){
      while(($row = mysqli_fetch_row($query)) && ($rows = mysqli_fetch_row($kq)))
      {
        if ( isset( $_REQUEST ) && !empty( $_REQUEST ) ) {
  
            $to = $_REQUEST['sdt'] . '@' . $_REQUEST['carrier'];
            $result = @mail( $to, '', $rows[1-4]);
            print 'Message was sent to ' . $to;
           }
      }
      
      echo '</table>';
      
      mysqli_close($conn);
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width intial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>
            Gửi Kết quả khám bệnh qua số điện thoại
        </title>
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
        <h1>
            Kết quả khám bệnh.
        </h1>
        
        <div id="container">
            <h1>Gửi kết quả khám bệnh qua số điện thoại</h1>
            <form action="" method="post">
                <label for="maphieu">Mã khám bệnh (Mã xác thực)
                    <input type="text" name="accesscode" required>
                </label>
                <ul>
                    <li>
                        <label for="sdt">Phone Number</label>
                        <input type="text" name="sdt" id="sdt" placeholder="0797985919" /></li>
                    <li>
                        <label for="carrier">Carrier</label>
                        <input type="text" name="carrier" id="carrier"  value="vtext.com" readonly/></li>
                    <input type="submit" name="sendMessage" id="sendMessage" value="Send Message" /></li>
                </ul>
            </form>
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


