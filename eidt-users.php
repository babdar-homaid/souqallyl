<!DOCTYPE html>
<html lang="en" dir="rtl">
  <head>
    <meta charset="utf-8">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <title></title>
<style media="screen">
  .dad{
    width: 85%;
    margin: 40px auto;
    box-shadow: 0px 0px 6px 3px #44444429;
    padding: 32px;
    text-align:center;
  }
  tbody {
      display:block;
      height:300px;
      overflow:auto;
  }
  thead, tbody tr {
      display:table;
      width:100%;
      table-layout:fixed;
  }
  thead {
      width: calc( 100% - 1em )
  }
  .dad2{
    text-align:center;

  }
  .number{
    text-align: center;
  }
  .number-details{
    display: inline-block;
    width: 25%;
    padding: 25px;

    box-shadow: 0px 0px 6px 3px #44444429;

  }
  .text{
    display: block;
  }
  .count{
        font-size: 40px;
  }
  .details{
    width: 70%;
    margin: 40px auto;
    box-shadow: 0px 0px 6px 3px #44444429;
    text-align: center;
        display: inline-block;
  }
  .right{
    width: 40%;
    background: #0c41ff5e;
    float: right;
    overflow: auto;
max-height: 300px;
    height: 200px;
  }
  .text-right{
    e
  }
  .count-right{
    padding: 0 12px 0 0;
  }
  .left{
    width: 40%;
background: #04ff0070;
float: left;
overflow: auto;
max-height: 300px;
    height: 200px;
  }
  .text-left{
    s
  }
  .count-left{
    padding: 0 12px 0 0;
  }

  .input{
    width: 50%!important;
    margin: 0 auto;
  }
  .green{
    color: #0f0;
    text-align: center;
  }
  .bg-light{
        box-shadow: -2px 2px 9px 0px #33333347;
  }
</style>
<?php

  include "Database.php";
  $db = new Database();

  $id = $_GET['id'];
  $sql = "Select * from users_tbl where id = $id";
  $rs = $db->dbQuery($sql);
  $row = $db->dbFetchRecord($rs);

  if(isset($_POST['btnAdd'])){
    $name = $_POST['name'];
    $pass = $_POST['pass'];
     $validity = $_POST['validity'];




         $sql = "UPDATE `users_tbl` SET `name` = '$name', `password` = '$pass', `validity` = '$validity' WHERE `users_tbl`.`id` = $id";
         $rs = $db->dbQuery($sql);
         $err = "???? ?????????????? ??????????";

         echo "<meta http-equiv='refresh' content='3;URL=users.php'>";


  }

?>
<?php
$SESSION=$_SESSION['name'];
$SESSION_id=$_SESSION['id'];

 if (isset($_SESSION['id'])){ ?>

<?php }else { ?>
  <meta http-equiv="refresh" content="0;URL='login.php'" />
<?php } ?>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" >
      <a class="navbar-brand" href="#">logo</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <?php
          $sql = "SELECT * FROM `users_tbl` where id = $SESSION_id";
          $rs = $db->dbQuery($sql);
          $row = $db->dbFetchRecord($rs);
          if ($row[3] == 1) { ?>
            <li class="nav-item active">
              <a class="nav-link" href="index.php">???????????????? <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="show.php">?????? ????????????????</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="section.php">??????????????</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="assignee.php">???????????? ???????????? ??????????</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="users.php">????????????????????  </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="type.php">????????????  </a>
            </li>
          <?php }elseif ($row[3] == 2) { ?>
            <li class="nav-item active">
              <a class="nav-link" href="index.php">???????????????? <span class="sr-only">(current)</span></a>
            </li>
        <?php  }elseif ($row[3] == 3) { ?>
          <li class="nav-item">
            <a class="nav-link" href="show.php">?????? ????????????????</a>
          </li>
        <?php }
           ?>

          <li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
    <?= $SESSION ?>
  </a>
  <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
    <a class="dropdown-item" href="logout.php">?????????? ????????</a>
  </div>
</li>

        </ul>

      </div>
    </nav>
    <div class="dad">
      <h3 class="green"><?= @$err ?></h3>

      <form method="post">
        <div class="form-group">
          <label >?????????? ??????????</label>
          <input type="text" class="form-control input" name="name" value="<?= $row[1] ?>"  placeholder="?????????? ??????????  ">
        </div>
        <div class="form-group">
          <label >?????????? ???????? ????????????</label>
          <input type="text" class="form-control input" name="pass" value="<?= $row[2] ?>"  placeholder="?????????? ???????? ????????????  ">
        </div>
        <div class="form-group">
          <label for="inputPassword" class="col-sm-2 col-form-label">???????????????? </label>
          <div class="col-sm-12">
            <select class="form-control input" name="validity" required>
              <option selected disabled>?????? ????????????????</option>
              <option <?php if($row[3] == 1){?>selected <?php } ?> value="1">????????</option>
              <option <?php if($row[3] == 2){?>selected <?php } ?> value="2">????????</option>
              <option <?php if($row[3] == 3){?>selected <?php } ?> value="3">????????????</option>
            </select>

          </div>
        </div>
        <div class="form-group center" >
          <button type="submit" name="btnAdd" class="btn btn-outline-success " >?????????? </button>

        </div>

      </form>



</div>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>
</html>
