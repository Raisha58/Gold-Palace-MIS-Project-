<?php
include('index.php');
include('../connect.php');
$data=mysqli_query($conn,"SELECT *from student");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gold Palace</title>
    <style>
        .try{
            background-color: #fbb534;
            width: 600px;
            transform: translateX(400px);
        }
        h2{
            font-size: 2.5em
        }
    </style>
</head>
<body>
<div class="main-content">
        <header>
            <h2>
                <!-- <label for="">
                    <span class="las la-bars"></span>
                </label> -->
                Admin Dashboard:
            </h2>
        </header>
</div>
<div class="try">
    <?php
    $count=0;
foreach($data as $value){
    $count++;
  
}

?>
            <h3 style="text-align:center; font-size:50px;">
Total number of Customer:
            </h3>
            <h3 style="text-align:center;font-size:50px;"><?php  echo $count ?></h3></div>
</body>
</html>