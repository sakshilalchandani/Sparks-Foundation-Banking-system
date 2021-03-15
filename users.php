<style>
/*.table1_c{
  width:50%; 
  margin-left:25%; 
  margin-right:25%;
}*/
</style>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Users</title>
  </head>
  <body>
    <?php require 'common_files/_nav.php'; ?>


<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  </body>
</html>



<?php

// 2
include 'common_files/_dbconnect.php';

    // 3
    $sql = "SELECT * FROM `customers`;";
    //echo $sql;
    $val = mysqli_query($con, $sql);
    if($val){
        //echo "yes";

        // 4
        echo "<div class='container'>
        <table class='table table-hover'>
        <thead>
          <tr>
            <th scope='col'>Username</th>
            <th scope='col'>Email Id</th>
            <th scope='col'>Account No.</th>
            <th scope='col'>Balance</th>
          </tr>
        </thead>
        <tbody>";
          while($row = mysqli_fetch_array($val)){
              echo "<tr>";
              // 5
              echo "<form method = 'post' action = 'send_money.php'>";
              echo "<td>" . $row['Name'] . "</td>";
              echo "<td>" . $row['Email'] . "</td>";
              echo "<td>" . $row['Account No.'] . "</td>";
              echo "<td>" . $row['Balance'] . "</td>";
            
              $id_value=$row['Sno'] ;
            
             echo "<input type='hidden' name='uid' value='$id_value'>";

             echo "<td><a href='send_money.php?uid=$id_value'><button class = 'btn btn-outline-dark'>Send Money</button></a></td>";
             echo " </form> ";
             echo "</tr>";
        }
        echo "</tbody>
        </table>
        </div>";
    }
    else{
        echo "no";
    }