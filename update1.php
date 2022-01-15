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
        .update{
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


    $id = $_POST['id'];

         $date = $_POST['date'];
         $name = $_POST['name'];
         $id_number = $_POST['id_number'];
         $section = $_POST['section'];
         $assignee = $_POST['assignee'];
         $type = $_POST['type'];
         $note = $_POST['note'];





             $sql = "UPDATE `data` SET
                        name='$name', id_number='$id_number', date='$date', `section`='$section', `assignee`='$assignee', `type`='$type', `note`='$note' where id =$id";
             $rs = $db->dbQuery($sql);
             $err = " <div class='update'>تم التعديل بنجاح</div>";

             echo " $err <meta http-equiv='refresh' content='3;URL=show.php'>";



      ?>

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
