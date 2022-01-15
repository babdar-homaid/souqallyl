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
