<!doctype html>
<html lang="ar" dir="rtl">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style media="screen">

      .dad{
        width: 70%;
        margin: 40px auto;
        box-shadow: 0px 0px 6px 3px #44444429;
        padding: 32px;
      }

      .label{
        display: block;
        text-align: right;
      }
      .center{
        text-align:center;
      }
      .btn{
        width: 50%;
        height: 50px;
        font-size: 22px;
      }
      .green{
        color: #0f0;
        text-align: center;
      }
      .bg-light{
            box-shadow: -2px 2px 9px 0px #33333347;
      }
      .w70{
        width: 70%!important;
        display: inline-block!important;
        float: right;
      }
      .w30{
        width: 29%!important;
        display: inline-block!important;
      }
            #pageloader
{
        display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;
  background: rgba( 255, 255, 255, 0.8 );
opacity: 0;
visibility: hidden;
height: 100%;
  position: fixed;
  width: 100%;
  z-index: 9999;
}

#pageloader img
{
  /*left: 50%;*/
  /*margin-left: -32px;*/
  /*margin-top: -32px;*/
  /*position: absolute;*/
  /*top: 50%;*/
}
#pageloader span{
    margin-top: 32px;
}
      @media (min-width:331px) and (max-width:600px){
        .col-form-label{
          display: block;
          text-align: center;
        }
        .w70{
          width: 100%!important;
          display: inline-block!important;
        }
        .w30{
          width: 100%!important;
          display: inline-block!important;
          margin-top: 20px;
        }
                  @media (min-width:331px) and (max-width:600px){
.dad {
    width: 100%;
font-size: 12px;
    padding: 32px 4px;
}
      }
      }
    </style>

    <?php

      include "Database.php";
      $db = new Database();
      $SESSION=$_SESSION['name'];
      $SESSION_id=$_SESSION['id'];

      $errtitle = $errcat= $errsum = $errdetails ="";

      if(isset($_POST['btnAdd'])){
         $date = $_POST['date'];
         $name = $_POST['name'];
         $id_number = $_POST['id_number'];
         $section = $_POST['section'];
         $assignee = $_POST['assignee'];
         $type = $_POST['type'];
         $note = $_POST['note'];
         $year = date("Y");
         $month = date("m");
         $id_img = $_FILES['id_img']['name'];
         $type_img = $_FILES['type_img']['name'];


         move_uploaded_file($_FILES['id_img']['tmp_name'], 'files/'.$id_img);
         move_uploaded_file($_FILES['type_img']['tmp_name'], 'files/'.$type_img);

             $sql = "insert into data
                            (`id`, `name`, `id_number`,`id_img`, `date`, `section`, `assignee`, `type`, `type_img`, `note`, `year`, `month`)
                     values(NULL, '$name','$id_number','$id_img', '$date', '$section','$assignee', '$type','$type_img', '$note', '$year', '$month')";
             $rs = $db->dbQuery($sql);
             $err = "تم الاضافة بنجاح";

             echo "<meta http-equiv='refresh' content='5;URL=index.php'>";


      }

    ?>
    <?php if (isset($_SESSION['id'])){ ?>

    <?php }else { ?>
      <meta http-equiv="refresh" content="0;URL='login.php'" />
    <?php } ?>

    <title>الادخال</title>
  </head>
  <body>
        <div id="pageloader">
   <img src="http://cdnjs.cloudflare.com/ajax/libs/semantic-ui/0.16.1/images/loader-large.gif" alt="processing..." />
   <span>جار الرفع ...</span>
</div>
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
              <a class="nav-link" href="index.php">الرئيسية <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="show.php">عرض البيانات</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="section.php">الاقسام</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="assignee.php">الجهات المحال اليها</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="users.php">المستخدمين  </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="type.php">الحالة  </a>
            </li>
          <?php }elseif ($row[3] == 2) { ?>
            <li class="nav-item active">
              <a class="nav-link" href="index.php">الرئيسية <span class="sr-only">(current)</span></a>
            </li>
        <?php  }elseif ($row[3] == 3) { ?>
          <li class="nav-item">
            <a class="nav-link" href="show.php">عرض البيانات</a>
          </li>
        <?php }
           ?>

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
    <div class="dad">

      <form method="post" enctype="multipart/form-data" id="myform" >
        <h3 class="green"><?= @$err ?></h3>
        <div class="form-group row">
          <label  class="col-sm-2 col-form-label">التاريخ</label>
          <div class="col-sm-10">
            <input type="date" class="form-control" name="date">
          </div>
        </div>
        <div class="form-group row">
          <label for="inputPassword" class="col-sm-2 col-form-label">الاسم</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" placeholder="الاسم" name="name" required>
          </div>
        </div>
        <div class="form-group row">
          <label for="inputPassword" class="col-sm-2 col-form-label">رقم الهوية</label>
          <div class="col-sm-10">
            <input type="text" class="form-control w70" placeholder="رقم الهوية" name="id_number" required>
            <input type="file" class="form-control w30" placeholder="رقم الهوية" name="id_img" required>
          </div>
        </div>
        <div class="form-group row">
          <label for="inputPassword" class="col-sm-2 col-form-label">القسم</label>
          <div class="col-sm-10">
            <select class="form-control" name="section" required>
              <option selected disabled>حدد القسم</option>
              <?php

              $query = "SELECT * FROM `section`";
              $result = $db->dbQuery($query);
              if($db->dbNumRows( $result)){
              $rows = $db->dbFetchResult($result);
              foreach($rows as $row){ ?>
                <option value="<?= $row[0] ?>"><?= $row[1] ?></option>

            <?php } } ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="inputPassword" class="col-sm-2 col-form-label">الجهة المحال اليها</label>
          <div class="col-sm-10">
            <select class="form-control" name="assignee" required>
              <option selected disabled>حدد الجهة</option>
              <?php

              $query = "SELECT * FROM `assignee`";
              $result = $db->dbQuery($query);
              if($db->dbNumRows( $result)){
              $rows = $db->dbFetchResult($result);
              foreach($rows as $row){ ?>
                <option value="<?= $row[0] ?>"><?= $row[1] ?></option>

            <?php } } ?>
            </select>

          </div>
        </div>
        <div class="form-group row">
          <label for="inputPassword" class="col-sm-2 col-form-label">نوع الحالة</label>
          <div class="col-sm-10">
            <select class="form-control w70" name="type" required>
              <option selected disabled>حدد الحالة</option>
              <?php

              $query = "SELECT * FROM `type`";
              $result = $db->dbQuery($query);
              if($db->dbNumRows( $result)){
              $rows = $db->dbFetchResult($result);
              foreach($rows as $row){ ?>
                <option value="<?= $row[0] ?>"><?= $row[1] ?></option>

            <?php } } ?>
            </select>
            <input type="file" class="form-control w30" placeholder="الاسم" name="type_img" required>

          </div>
        </div>
        <div class="form-group row">
          <label for="inputPassword" class="col-sm-2 col-form-label"> ملاحظات </label>
          <div class="col-sm-10">
            <textarea class="form-control" id="exampleFormControlTextarea1" name="note" rows="3" required></textarea>

          </div>
        </div>
        <div class="form-group center" >
          <button type="submit" class="btn btn-outline-success " name="btnAdd">حفظ</button>

        </div>

      </form>
    </div>
<script type="text/javascript">
$(document).ready(function(){
$("#myform").on("submit", function(){
  $("#pageloader").show();
  $("#pageloader").css("display", "flex");
  $("#pageloader").css("opacity", "1");
  $("#pageloader").css("visibility", "visible");
});//submit
});//document ready
</script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
