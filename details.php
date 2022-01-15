<!DOCTYPE html>
<html lang="en" dir="rtl">
<head>
  <meta charset="utf-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- my css file -->
  <link rel="stylesheet" href="css/style.css">

  <title>التفاصيل</title>
  <!-- Bootstrap CSS -->


    <!-- Start css codes -->
    <style>

     *{
       padding: 0;
       margin: 0;
     }
     .input-sec {
       text-align: center;
       font-size: 25px;
       margin-top: 15px;
     }
     .input-sec .radio{
       display: inline-block;
       width: 50px;
       height: 20px;

     }
     .f{
       display: block;
       margin-top: 15px;
     }
     label{
       margin: 0px;
     }

     .input-sec .q{
       margin-left: 30px;

     }
     .input-sec  input{
       display: block;
       margin: 15px auto;
       width: 350px;
       height: 50px;
       border-radius: 30px;
       border: 1px solid #000;
       padding: 0 50px;
       outline: 0px;
       background: #fff;
text-align: center;

     }
     textarea{
      width: 350px;
       height: 150px;padding: 10px 30px;
       outline: 0px;
       border-radius: 30px;
       display: block;
       margin :0px auto;
       background: #fff;
border: 1px solid;

     }
     .add{
       display: block;
    text-decoration: none;
    background: #08b32d;
    color: #fff;
    width: 438px;
    margin: 20px auto 5px auto;
    padding: 8px 8px;
    border-radius: 10px;
    font-size: 20px;
     }
     .delete{
       display: block;
    text-decoration: none;
    background: #ff0404;
    color: #fff;
    width: 438px;
    margin: 20px auto 5px auto;
    padding: 8px 8px;
    border-radius: 10px;
    font-size: 20px;

     }
     .update{
         display: block;
         text-decoration: none;
         background: #0ab30a;
         color: #fff;
         width: 438px;
         margin: 20px auto 5px auto;
         padding: 8px 8px;
         border-radius: 10px;
         font-size: 20px;

     }
     .done{
       display: block;
    text-decoration: none;
    background: #0804ff;
    color: #fff;
    width: 438px;
    margin: 20px auto 5px auto;
    padding: 8px 8px;
    border-radius: 10px;
    font-size: 20px;
     }
     .disabled{
       cursor: not-allowed;
     }
     #yes:checked{
  background-color:#392;
}
#no:checked{
  background-color:#932;
}
label{
  display: block;
}


    </style>

    <!-- End css codes -->
    <?php
    include 'Database.php';

      $db = new Database();
      $id = $_GET['id'];

      $sql = "Select * from data where id = $id";
      $rs = $db->dbQuery($sql);
      $row = $db->dbFetchRecord($rs);
      ?>
</head>
<body>
  
  <section class="input-sec" >
 <form>


  <label>الاسم</label>
  <input type="text" placeholder="" value="<?= $row[1] ?>" name="" disabled>
  <label>رقم الهوية</label>
  <input type="text" placeholder="" value="<?= $row[2] ?>" name="" disabled>
  <a href="files/<?= $row[3] ?>" download> <img src="files/<?= $row[3] ?>" alt="" width="400px"> </a>
  <label>التاريخ</label>
  <input type="date" value="<?= $row[4] ?>" name="" disabled>
  <label>القسم</label>
  <input type="text" placeholder="" value="<?php
            $query1 = "SELECT * FROM `section`";
            $result1 = $db->dbQuery($query1);
            $rows1 = $db->dbFetchResult($result1);
            foreach($rows1 as $row1){
              if ($row1[0] == $row[5]) {
                echo $row1[1];
              }
            }
             ?>" name="" disabled>
  <label>الجهة المحال اليها</label>
  <input type="text" placeholder="" value="<?php
            $query1 = "SELECT * FROM `assignee`";
            $result1 = $db->dbQuery($query1);
            $rows1 = $db->dbFetchResult($result1);
            foreach($rows1 as $row1){
              if ($row1[0] == $row[6]) {
                echo $row1[1];
              }
            }
             ?>" name="" disabled>
  <label>نوع الحالة</label>
  <input type="text" placeholder="" value="<?php
            $query1 = "SELECT * FROM `type`";
            $result1 = $db->dbQuery($query1);
            $rows1 = $db->dbFetchResult($result1);
            foreach($rows1 as $row1){
              if ($row1[0] == $row[7]) {
                echo $row1[1];
              }
            }
             ?>" name="" disabled>
             <a href="files/<?= $row[8] ?>" download> <img src="files/<?= $row[8] ?>" alt="" width="400px"> </a>

  <label>الملاحظات</label>
  <textarea name="" id="" cols="30" rows="1" placeholder="الملاحظات" disabled><?= $row[9] ?></textarea>
  <?php
  if ($row[12] == 0) { ?>
    <a  href="update.php?id=<?= $row[0] ?>" class=" update"> تعديل الطلب</a>
    <a  href="delete.php?id=<?= $row[0] ?>" class=" delete"> حذف الطلب</a>

  <?php }   ?>

</form>
</section>
</body>

</html>
