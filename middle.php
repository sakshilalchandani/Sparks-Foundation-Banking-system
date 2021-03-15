<style>

.vertical-center {
      height: 50%;
      width: 50%;

      text-align: center;  /* align the inline(-block) elements horizontally */
    }

    .style_but{
       display:inline-block;
       width:400px;
}

</style>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Transaction progress</title>
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

  session_start();
if($_SESSION['sending']==true){
    $sending_without_user = false;
    //echo $_POST['money'] . "<br>";
  if($_SERVER['REQUEST_METHOD'] == 'POST'){
    include 'common_files/_dbconnect.php';    

    $receiver = $_POST['receiver'];      //1
    $sending_money = $_POST['money'];
    $sender = $_POST['uid'];



            //2
            //3 for sender
            $sql4 = "SELECT * from `customers` where Sno= '$sender' ";
            $val4 = mysqli_query($con,$sql4);
            $row4 = mysqli_fetch_array($val4);      // isse wo row milgayi sender wali, i want sender balance 
            $sender_bal =  $row4['Balance'];
            $sender_id = $row4['Sno'];
            $sen_name = $row4['Name'];

            //3 for receiver
            $sql5 = "SELECT * from `customers` where Name= '$receiver'";
            $val5 = mysqli_query($con,$sql5);
            $row5 = mysqli_fetch_array($val5);      // isse wo row milgayi receiver wali 
            $receiver_bal =  $row5['Balance'];
            $receiver_id = $row5['Sno'];
            $rec_name = $row5['Name'];

            $sender_net_balance = $sender_bal - $sending_money;
            $receiver_net_balance = $receiver_bal + $sending_money;

            echo "<div class='container my-4 text-center'>";

            if($sending_money<=$sender_bal){
                //4
                $sql6 = "UPDATE `customers` set Balance = $sender_net_balance where Sno = $sender_id ";
                $val6 = mysqli_query($con, $sql6);

                $sql7 = "UPDATE `customers` set Balance = $receiver_net_balance where Sno = $receiver_id ";
                $val7 = mysqli_query($con, $sql7);

                $sql8 = "INSERT INTO `transactions` (`Sender`, `Receiver`, `Money`, `Date`) VALUES ('$sen_name', '$rec_name', '$sending_money', current_timestamp());";
                $val8 = mysqli_query($con,$sql8);

                echo '<div class="alert alert-success" role="alert">
                <h1 class="alert-heading">Well done!</h1>
                <p>Aww yeah, you successfully sent money to your friend.</p>
                <hr>
                <p class="mb-0">Whenever you need to, be sure to see all your transactions on the 
                <a href="transactions.php">
                Transactions portal</a></p><br>
              </div>';
                echo "<div class='style_but'>
                <form method='post' action='send_money.php'>
                <input type='hidden' name='uid' value='$sender'>
                <a href = 'send_money.php?uid=$sender'>
                <input type='submit' class='btn btn-primary btn-lg btn-block' value='Send money to another customer'></a>
                </form> 
                <a href='users.php' class='btn btn-secondary btn-lg btn-block' role='button'>Choose another account
                </button></a></div> ";

            }
            else{
              echo '<div class="alert alert-danger fade show">
        <h1 class="alert-heading display-4"><i class="fa fa-warning"></i>Transaction Unsuccessful !</h4>
        <hr class="my-4">
        <p>Something went Wrong and we could not complete your transaction request.<br>
        <b>Please Note</b> that you can only send money lesser than your balance.</p>
        <a class="btn btn-danger btn-lg" href="users.php" role="button">Try again</a>
    </div>';

              echo '</div>';    //closing of biggest div.
            }

  }
  }     // sessions check...
  else{
    $sending_without_user = true;
    header("Location: users.php");
  }

?>