<?php 
session_start();
$admin_id = $_SESSION['admin_id'];
$admin_name = $_SESSION['admin_name'];
$level_a = $_SESSION['level_a'];
if($level_a!='admin'){
 Header("Location: ../form_login_admin.php");    //ไม่พบผู้ใช้กระโดดกลับไปหน้า login user form 
 
}?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
    
