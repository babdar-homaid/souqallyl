

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- DATATABLE -->
        <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<style media="screen">
  a{
    text-decoration: none;
    color: inherit;
  }
  .fluid{
margin-top: 2%;
 }
 .green{
   background-color: green
 }
 .tm{
   background: #0ab30a;
 }

 .now{
     background: #ffdf00;
 }
 .after{
   background: #0072ff;
 }
 .ico{
   font-size: 35px;
color: #fff;
text-align: center;

 }
 .start{
   color: #333;
 }
</style>

<?php
include 'Database.php';

$SESSION=$_SESSION['name'];

$db = new Database();
if (isset($_SESSION['id'])){ ?>

<?php }else { ?>
 <meta http-equiv="refresh" content="0;URL='login.php'" />
<?php } ?>


  </head>
  <body>
    <nav dir="rtl" class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="../index.php">الرئيسية</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="data.php"> عرض البيانات</a>
          </li>

          <li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
    <?= $SESSION ?>
  </a>
  <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
    <a class="dropdown-item" href="logout.php">تسجيل خروج</a>
  </div>
</li>
        </ul>
      </div>
    </nav>
    <div class="container fluid">

    <table  class="table table-hover table-striped table-bordered dataTable" id="isi">
      <thead>
        <tr>

          <th scope="col"># </th>
          <th scope="col">رقم الهوية</th>
          <th scope="col">الاسم</th>
          <th scope="col">مشرف المركز</th>
          <th scope="col">التاريخ </th>
          <th scope="col">التفاصيل</th>
        </tr>
      </thead>
      <tbody>
        <?php

        $query = "SELECT * FROM `data` ORDER BY `data`.`id` DESC ";
        $result = $db->dbQuery($query);
        if($db->dbNumRows( $result)){
        $rows = $db->dbFetchResult($result);
        foreach($rows as $row){ ?>
        <tr >
          <td> <a > <?= $row[0]; ?></a></td>
          <td><a ><?= $row[11]; ?></a></td>
          <td><a><?= $row[1]; ?></a></td>
          <td><a ><?= $row[13]; ?></a></td>
          <td><a ><?= $row[8]; ?></a></td>





              <td> <a href="show.php?id=<?= $row[0]; ?>">التفاصيل</a> </td>
        </tr>
        <?php } }
         ?>
      </tbody>

    </table>

  </div>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <!-- DATATABLE -->
    <script type="text/JavaScript" src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script type="text/JavaScript" src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>

    <script>

      $(document).ready(function() {
        $("#isi").dataTable();

        setTimeout(function () {
         location.reload(true);
       }, 500000);
      });


    </script>
  </body>

</html>
