<?php session_start();
    class Database{
        protected $link, $result, $rownum;
        // method / function
        public function __construct() {
         $this->link = mysqli_connect('localhost', 'souqyyjb_mohammed','ogdg159753','souqyyjb_mohammed2');
         mysqli_set_charset($this->link,"utf8");
        }
        public function dbQuery($sql){
            $this->result = mysqli_query($this->link, $sql);
            @$this->rownum = mysqli_num_rows($this->result);
        }
        public function Last_id(){
            return mysqli_insert_id($this->link);
        }
        public function dbNumRows(){
            return  $this->rownum;
        }
        public function dbFetchResult($result){
            $rows = array();
            for($i = 1; $i <= $this->dbNumRows(); $i++){
                $rows[$i] = mysqli_fetch_array($this->result);
            }
            return $rows;
        }
        public function dbFetchRecord($result){
            return mysqli_fetch_array($this->result);
        }
         function doLogin()
 {
     $errMessage = "";
     $username = $_POST['txtUserName'];
     $password = $_POST['txtPassword'];
     if($username !="" && $password !="")
     {
         $query = "Select id from users_tbl
                 where name = '$username' and
                 password = '$password' ";
         $result = $this->dbQuery($query);
         if($this->dbNumRows($result) > 0 )
         {
            $rows = $this->dbFetchResult($result);
                foreach ($rows as $row) {
                    # code...

            $_SESSION['id'] = $row[0];
            }
            // $session = array('id'=> $row[0], 'name'=>$row[1])
            $_SESSION['name'] = $username; // $row[1]
            header('location:cpanel/index.php');
         }else
            $errMessage = "Please Check Your Name or Password";
     }else
            $errMessage ="Please Type Your Name and Password";

     return $errMessage;
 }

    function CheckUser()
    {
        if(!isset($_SESSION['id']))
        {
            header('location:login.php');
        }
    }


    }
