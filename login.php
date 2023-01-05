<?php
    $serverName ="127.0.0.1";
    $userName ="root";
    $pwd ="";
    $nameDB = "hospital";
    $conn = mysqli_connect($serverName, $userName, $pwd, $nameDB);
    mysqli_set_charset($conn, "utf8");
    if ($conn === false){
        echo "ket noi that bai";
        die('db erorr:'.mysqli_connect_error());
    }
    session_start();
    if(isset($_POST['login'])){ 
      $id = $_POST['username'];
      $password = $_POST['password'];
      $sql = "SELECT * FROM `login` WHERE `id`='$id' AND `password` = '$password'";
      $kq = mysqli_query($conn,$sql);
      $num = mysqli_num_rows($kq);
      if($num==1){
          $user = mysqli_fetch_array($kq);
          $_SESSION['user']['user_id'] = $user['MKH'];
          $_SESSION['user']['user_name'] = $user['TenKH'];
          header("location: main.php");
      }else{
          $error='wrong passwork';
      }
  }

    
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="login_styles.css"/>
    <link rel="stylesheet" href="style.css"/>


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
        <li><a href="#about">Về chúng tôi</a></li> 
      </ul>
    <h1>Đăng Nhập Tài Khoản</h1>
    
    <form action="" method="post">
    

    <div class="container">
      <label for="uname"><b>Tài khoản</b></label>
      <input type="text" placeholder="Enter Username" name="username" required>

      <label for="password"><b>Mật khẩu</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>

      <button type="submit" name="login">Đăng nhập</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Nhớ tôi cho lần đăng nhập lần sau
      </label>
    </div>

    <div class="container" style="background-color:#1b1b32">
      <button type="button" class="cancelbtn"><a href="home.html">Cancel</a></button>
      <span class="password">  <a href="#"> Quên mật khẩu ?</a></span>
    </div>
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
  </body>
  <script src="./script.js"></script>     

</html>
