<!DOCTYPE html>
<html lang="en" dir="rtl">
  <head>
    <meta charset="utf-8">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

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
.ss{
  display: inline-block;
}
  .bg-light{
        box-shadow: -2px 2px 9px 0px #33333347;
  }
  .col-sm-3{
    max-width: 100%;
  }
  @media print {

  form {
  visibility: hidden;
  opacity: 0;
  }


}
          @media (min-width:331px) and (max-width:600px){
.dad {
    width: 100%;
font-size: 12px;
    padding: 32px 4px;
}
      }
</style>

<?php
include 'Database.php';
$db = new Database();

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
           <li class="nav-item">
             <a class="nav-link" href="users.php">????????????????????  </a>
           </li>
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
      <form class="" action="Search.php" method="post">


      <div class="form-group row ss">
        <div class="col-sm-3">
          <select class="form-control" name="yaer" required>
            <option selected disabled>?????? ??????????</option>
            <?php
            $yaer = $_POST['yaer'];
            $month = $_POST['month'];

            $query = "SELECT * FROM `yaers`";
            $result = $db->dbQuery($query);
            if($db->dbNumRows( $result)){
            $rows = $db->dbFetchResult($result);
            foreach($rows as $row){ ?>
              <option value="<?= $row[1] ?>" <?php if ($yaer == $row[1]  ) { ?>
                selected
              <?php } ?>><?= $row[1] ?></option>

          <?php } } ?>
          </select>

        </div>
      </div>
      <div class="form-group row ss">
        <div class="col-sm-3">
          <select class="form-control" name="month" required>
            <option selected disabled>?????? ??????????</option>
            <option <?php if ($month == 1  ) { ?>selected<?php } ?> value="1">1</option>
            <option <?php if ($month == 2  ) { ?>selected<?php } ?> value="2">2</option>
            <option <?php if ($month == 3  ) { ?>selected<?php } ?> value="3">3</option>
            <option <?php if ($month == 4  ) { ?>selected<?php } ?> value="4">4</option>
            <option <?php if ($month == 5  ) { ?>selected<?php } ?> value="5">5</option>
            <option <?php if ($month == 6  ) { ?>selected<?php } ?> value="6">6</option>
            <option <?php if ($month == 7  ) { ?>selected<?php } ?> value="7">7</option>
            <option <?php if ($month == 8  ) { ?>selected<?php } ?> value="8">8</option>
            <option <?php if ($month == 9  ) { ?>selected<?php } ?> value="9">9</option>
            <option <?php if ($month == 10  ) { ?>selected<?php } ?> value="10">10</option>
            <option <?php if ($month == 11  ) { ?>selected<?php } ?> value="11">11</option>
            <option <?php if ($month == 12  ) { ?>selected<?php } ?> value="12">12</option>
          </select>

        </div>
      </div>
      <div class="form-group center ss" >
        <button type="submit" class="btn btn-outline-success " name="btnsubmit">??????</button>

      </div>
      </form>
      <table class="table table-hover table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">??????????????</th>
      <th scope="col">?????? ????????????</tth>
      <th scope="col">??????????</th>

           <th scope="col">????????????????</th>

    </tr>
  </thead>
  <tbody>


    <?php


    $query = "SELECT * FROM `data` where year  = $yaer and month = $month";
    $result = $db->dbQuery($query);
    if($db->dbNumRows( $result)){
    $rows = $db->dbFetchResult($result);
    foreach($rows as $row){ ?>
    <tr>
      <th scope="row"> <?= $row[0]; ?></th>
      <td> <?= $row[4]; ?></td>
      <td> <?= $row[2]; ?></td>
      <td> <?= $row[1]; ?></td>
      
      <td> <a href="details.php?id=<?= $row[0] ?>">????????????????</a> </td>
    </tr>
  <?php } }  ?>




  </tbody>
</table>
<button class="btn btn-outline-primary " onclick="window.print()">??????????</button>

    </div>




        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>
</html>
