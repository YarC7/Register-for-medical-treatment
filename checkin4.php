


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width intial-scale=1.0">
        <title>
            Tìm Kiếm kết quả khám bệnh
        </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">


        
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
        <h1>Tìm kiếm kết quả khám bệnh </h1>
        <p>Vui lòng điền số điện thoại và mã phiếu để tìm kiếm kết quả !</p>
        
        <form name="frm" method="post" action="checkin4.php">
            <label for="sdt">Số điện thoại
                <input type="tel" name="sdt" pattern="[0-9]{10}" maxlength="11" size="11" placeholder="Số điện thoại" required>
                <br>
                <small>Format: 0797985919</small><br><br>
            </label>
            <label for="maphieu">Mã khám bệnh (Mã xác thực)
                <input type="text" name="accesscode" required>
            </label>
            <input type="submit" name="ketqua" value="Tìm">
            
            <button type="submit"><a href="result.php">Gửi kết qua qua số điện thoại</a></button>
        </form>
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

            $sql = "SELECT * FROM `phieuhen` where `maxacthuc`  like '$maxacthuc' ";
            $query = mysqli_query($conn,$sql);
            
            $n = mysqli_num_rows($query);

            $lenh = "SELECT * FROM `ketqua` where `Maphieu` like '%$maxacthuc%'";
            $kq = mysqli_query($conn,$lenh);
            $n1 = mysqli_num_rows($kq);
            if($maxacthuc = @$_POST["accesscode"]){
                echo '<table id ="table" ,border=1> 
                    <tr>
                        <td colspan=11 align=center>Kết quả khám bệnh</td>
                    </tr>
                    <tr rowspan=1>
                        <td>Tên Bệnh Nhân</td>
                        <td>Giới tính</td>
                        <td>Năm sinh</td>
                        <td>Địa chỉ</td>
                        <td>Số điện thoại</td>

                        <td>Kết Quả</td>
                        <td>Nên</td>
                        <td>Không Nên</td>
                        <td>Ngày Tái Khám</td>
                        <td>Hình ảnh (1)</td>
                        <td>Hình ảnh (2)</td>
                    </tr>
                    ';
            while(($row = mysqli_fetch_row($query)) && ($rows = mysqli_fetch_row($kq)))
            {
            echo"<tr>
                <td>$row[1]</td>
                <td>$row[2]</td>
                <td>$row[3]</td>
                <td>$row[4]</td>
                <td>$row[5]</td>
                <td>$rows[1]</td>
                <td>$rows[2]</td>
                <td>$rows[3]</td>
                <td>$rows[4]</td>

                <td><img src=images/$rows[5] width=100 height=100></td>
                <td><img src=images/$rows[6] width=100 height=100></td>

            </tr>";
            }
            
            echo '</table>';
            mysqli_close($conn);
            }
        ?>
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