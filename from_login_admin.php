<?php 
include('head.php');
?>
<?php include('navbar.php'); ?>
<div class="container">
<br><br><br>
<div class="d-flex justify-content-center">
<div class="card mt-5 w-75">
  <div class="card-body p-5">
  <form action="check_login_admin.php" method="POST">
  <div class="form-group">
    <label for="exampleInputEmail1">บัญชีผู้ใช้เครือข่ายนนทรี</label>
    <input type="text" name="admin_l" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">รหัสผ่าน</label>
    <input type="password" name="admin_p" class="form-control" id="exampleInputPassword1">
  </div>
  <br><br>
  <button type="submit" class="btn btn-success btn-block">เข้าสู่ระบบ</button>
</form>
  </div>
</div>
</div>


</div>

