 <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Send money</title>
  </head>
  <body>
    <?php require 'common_files/_nav.php'; ?>


<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  </body>
</html>


<style>
    .form-group{
        margin-left:200px;
        margin-right:200px;
        margin-top:20px;
    }

    .style_c{
        width:50%;
    }
    select,option{
        width : 150px;
    }
    .style_but{
       display:inline-block;
       width:400px;
}
</style>


<?php


    include 'common_files/_dbconnect.php';

    $sender = $_POST['uid'];

    echo "<div class='container my-4 text-center'>";

    $sql2 = "select * from `customers` where Sno = '$sender' ";
    $val2 = mysqli_query($con, $sql2);

    //3
    if($val2){
        while($row2 = mysqli_fetch_array($val2)){
            echo "<b>SENDER : </b>" . $row2['Name']. "<br><br>";
            echo "<b>CURRENT BALANCE : </b>" . $row2['Balance']. "<br><br>";
            $sen_name=$row2['Name'];

    }
    }

    echo "<form method='POST' action='middle.php'>
    <b>SELECT RECEIVER : </b> 
    <select class='custom-select select_c' name='receiver'>
    <option selected>Select a user to send Money</option>";
    $sql3 = "select * from `customers` ";
    $val3 = mysqli_query($con, $sql3);
    if($val3){
        while($row3 = mysqli_fetch_array($val3)){
            if($row3['Name'] != $sen_name){                                                       
                echo "<option>" . $row3['Name'] . "</option>" ;
            }
        }
    }
  echo '</select><br><br>';

    echo "<label for='money'> <b>SPECIFY MONEY : </b></label><br>
    <input type='number' name='money' id='money' min='0'><br><br><br>
    <input type='hidden' name='uid' value='$sender'>     
    <div class='style_but'>
    <input type='submit'  class='btn btn-primary btn-lg btn-block' value = 'Send'>";
    
    session_start();
    $_SESSION['sending'] = true;
    
    echo '</div>
    </form>
    </div>';

?>