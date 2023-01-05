
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width intial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="registration_style.css"/>
    <link rel="stylesheet" href="style.css"/>

  </head>
  <body>
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
        $id = $_POST["username"];
        $password = $_POST["password"];
        $hoten = $_POST["fullname"];

        $sql ="INSERT INTO `login` (`id`, `password`, `hoten`) VALUES ( '$id', '$password' , '$hoten')";
        mysqli_query($conn, $sql);

         
      }  
    ?>
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
    <h1>Đăng Ký Tài Khoản</h1>
    <p>Vui lòng đọc kỹ và  điền đầy đủ thông tin dươi dây</p>
    <form action="registration.php" method="post" enctype="multipart/form-data">   
        <label for="fullname">Nhập họ và tên  của bạn: <input id="fullname" name="fullname" type="text" placeholder="Họ và tên" required /></label>            
        <label for="email">Nhập email của bạn: <input id="username" name="username" type="email" required /></label>
        <label for="new-password">Tạo mật khẩu mới: <input id="password" name="password" type="password"  required /></label>
        <button type="submit" name="submit">
          Đăng ký
        </button>
    </form>
    
  </body>


</html>