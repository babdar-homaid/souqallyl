<style media="screen">
body{
  margin: 0;
  padding: 0;
}
.green{
  color: #0f0;
  text-align: center;
  font-size: 47px;
}
.dad{
  display: flex;
  justify-content: center;
  align-items: center;
      height: 100vh;
}
</style>
<?php
    include "Database.php";
    $db = new Database();
    $id = $_GET['id'];
         $sql = "delete from type where id = $id";
         $rs = $db->dbQuery($sql);
         $err = "تم الحذف بنجاح";
         echo "<meta http-equiv='refresh' content='2;URL=type.php'>";
?>
<div class="dad">
  <h3 class="green"><?= @$err ?></h3>
</div>
