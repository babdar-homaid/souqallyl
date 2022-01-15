<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>
  <meta charset="utf-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap V3  css file -->
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <!-- Bootstrap V3  css file -->
  <link rel="stylesheet" href="../css/font-awesome.min.css">
  <!-- my css file -->
  <link rel="stylesheet" href="../css/style.css">
  <link rel="icon" href="../img/s7ty.jpg" type="../image/gif" sizes="25x25">

  <!-- my css file -->
  <title>نموذج اقرار بلاغ - وزارة الصحة</title>
  <!--[if lt IE 9]>6
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->



<?php

 include"Database.php";
$db = new Database();
$id = $_GET['id'];
$sql = "Select * from data where id = $id";
$rs = $db->dbQuery($sql);
$row = $db->dbFetchRecord($rs);

?>

</head>

<body style="
  overflow-x: hidden;
">


<section class="na">
    <div class="img">
      <img src="../img/Untitled-4.png" alt="">

    </div>
    <div class="logo">
      <img src="../img/s7ty.png" alt="THIS IS LOGO">
    </div>
    <div class="title">
      <p> نموذج اقرار بلاغ وارد من مركز اتصال الصحة <bdi>(973)</bdi></p>
    </div>
    <div class="clear"></div>

  </section>
  <section class="form">
    <form method="post" action="">
      <p>يتم تعبئة هذا النموذج في حال وصول بالغ من مستفيد عبرمركز 937 بعدم ظهورالجرعةللمستفيد في نظام ( NVR )
        والمستفيد لم يتلقى اللقاح.</p>
      <div class="inout-1">
        <ol>
          <li class="li">
            <label>التحقق من وجود موعد : </label>
            <span> لديه موعد </span> <input value="1" type="radio" name="appointment" <?php if($row[2] == 1){ ?> checked <?php } ?> >
            <span>لا يوجد لديه موعد </span> <input value="0" type="radio" name="appointment" <?php if($row[2] == 0){ ?> checked <?php } ?>>
          </li>

          <li>
            <label>التحقق من معلومات المستفيد (الاسم ، رقم الهوية) : </label>
            <span> نعم </span> <input value="1" type="radio" name="check_info" <?php if($row[3] == 1){ ?> checked <?php } ?>>
            <span>لا</span> <input value="0" type="radio" name="check_info" <?php if($row[3] == 0){ ?> checked <?php } ?>>
          </li>
          <li>
            <label>التحقق من تأهيل المستفيد لاخد الجرعة : </label>
            <span> نعم </span> <input value="1" type="radio" name="check_qualification" <?php if($row[4] == 1){ ?> checked <?php } ?>>
            <span>لا</span> <input value="0" type="radio" name="check_qualification" <?php if($row[4] == 0){ ?> checked <?php } ?>>
          </li>
          <li>
            <label>حضر المستفيد الى المركز : </label>
            <span> نعم </span> <input value="1" type="radio" name="Attended" <?php if($row[5] == 1){ ?> checked <?php } ?>>
            <span>لا</span> <input value="0" type="radio" name="Attended" <?php if($row[5] == 0){ ?> checked <?php } ?>>
            <br>
            <label> ( في حال حضور المستفيد الى المركز )هل توجه المستفيد الى المسار والغرفة المخصصة له : </label>
            <span> نعم </span> <input value="1" type="radio" name="head_room" <?php if($row[6] == 1){ ?> checked <?php } ?>>
            <span>لا</span> <input value="0" type="radio" name="head_room" <?php if($row[6] == 0){ ?> checked <?php } ?>>
          </li>

          <li>
            <label> بيانات المستفيد تم تسجيلها في سجلات المركز : </label>
            <span> نعم </span> <input value="1" type="radio" name="data_presence" <?php if($row[7] == 1){ ?> checked <?php } ?>>
            <span>لا</span> <input value="0" type="radio" name="data_presence" <?php if($row[7] == 0){ ?> checked <?php } ?>>
          </li>
          <li>
            <label class="lapel"> التاريخ : </label>
            <input type="date" class="dd" name="date" value="<?= $row[8] ?>">
          </li>
        </ol>
      </div>

<div class="input-2">
      <label for="">وبذلك نقر انا </label>
      <span class="C">(</span><input type="text" name="name1" value="<?= $row[9] ?>"><span class="C">)</span>
      <br>
      <label for=""> بأن المستفيد </label>
      <span class="C">(</span><input type="text" name="name2" value="<?= $row[10] ?>"><span class="C">)</span>
      <label for=""> صاحب الهوية </label>
      <span class="C">(</span> <input type="text" name="id_number" value="<?= $row[11] ?>"><span class="C">)</span>
    </div>


      <div class="input-3">
        <ul>
          <li>
            <input type="radio" name="last" value="1" <?php if($row[12] == 1){ ?> checked <?php } ?>><span> استكمل اجراءات اخد اللقاح في المركز ولكن لم يحصل على اللقاح </span>
          </li>
          <li>
            <input type="radio" name="last" value="2" <?php if($row[12] == 2){ ?> checked <?php } ?>><span>لم يستكمل اجراءات اخد اللقاح في المركز ولم يحصل على اللقاح</span>

          </li>
          <li>
            <input type="radio" name="last" value="3" <?php if($row[12] == 3){ ?> checked <?php } ?>><span>لم يحضر المستفيد الى المركز </span>

          </li>
        </ul>
      </div>


      <p class="p">*  تحفظ النماذج في امانةالمركز لحفظ الحقوق و العودة لها عند الحاجة</p>

      <div class="last" style="text-align: center;">
        <div class="content" >


        <div class="row">
       <label for="" class="la">مشرف المركز :</label>
       <input type="text" name="supervisor" value="<?= $row[13] ?>">
        </div>
        <div class="row">
          <label for="" class="la">الاسم :</label>
          <input type="text" name="name" value="<?= $row[1] ?>">
        </div>
                <div class="row">
          <label for="" class="la">توقيع :</label>
          <input type="text" name="signature" value="<?= $row[14] ?>">
        </div>
        </div>
        <input type="submit" value="طباعة" class="submit" name="btnAdd" onclick="window.print();">



      </div>






    </form>
  </section>


  <script src="../js/jquery.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/myjs.js"></script>
</body>

</html>
