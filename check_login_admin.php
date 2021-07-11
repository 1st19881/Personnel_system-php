<?php 
session_start();
if(isset($_POST['admin_l'])){
          include("../project_siri/conn.php");
          $admin_l = $_POST['admin_l'];
          $admin_p  = ($_POST['admin_p']);

          $sql="SELECT * FROM  admin
          WHERE  admin_l='".$admin_l."' 
          AND  admin_p='".$admin_p."' ";
          $result = mysqli_query($conn,$sql);

          echo '
          <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
          ';		
          
          if(mysqli_num_rows($result)==1){
              $row = mysqli_fetch_array($result);

              $_SESSION["admin_id"] = $row["admin_id"];
              $_SESSION["admin_name"] = $row["admin_name"];
              $_SESSION['level_a'] = $row["level_a"];
              if($_SESSION["level_a"]=="admin"){ 

                echo '
                <script>
                    setTimeout(function() {
                    swal({
                            title: "Login success",
                            text: "เข้าสู่ระบบผู้ดูแลระบบสำเร็จ",
                            type: "success"
                        }, function() {
                        window.location = "admin/index.php";
                    });
                    }, 100);
                </script>
                ';
                  }
              }else{
                echo '
                <script>
                    setTimeout(function() {
                    swal({
                            title: "Login ผิดพลาด !!",
                            text: "username หรือ password ไม่ถูกต้อง กรุณาลองใหม่อีกครั้ง",
                            type: "warning"
                        }, function() {
                        window.location = "from_login_admin.php";
                    });
                    }, 100);
                </script>
                ';

              }

}
?>