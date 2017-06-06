<?php include '../lib/Session.php';
  Session::checkSession();
?>
<?php include '../config/config.php'; ?>
<?php include '../lib/Database.php'; ?>

<?php
$db = new Database();
?>

<?php
  if(!isset($_GET['delpostid']) || $_GET['delpostid']== NULL ){
    // header("Location: catlist.php"); // this code alternet to below javascript code
    echo "<script> window.location = 'postlist.php';</script>"; //javascript CODE
  }else{
    $postid = $_GET['delpostid'];
    $query  = "SELECT * FROM tbl_post WHERE id='$postid'";
    $getData = $db->select($query);
    if($getData){
      while ($delimg = $getData->fetch_assoc()) {
        $dellink = $delimg['image'];
        unlink($dellink); // delete image from folder
      }
    }
    $delquery = "DELETE FROM tbl_post WHERE id='$postid'";
    $delData  = $db->delete($delquery);
    if($delData){
      echo "<script>alert('Data Deleted successfully.');</script>";
      echo "<script> window.location = 'postlist.php';</script>";
    }else{
      echo "<script>alert('Data Not Deleted !!');</script>";
      echo "<script> window.location = 'postlist.php';</script>";
    }
  }

 ?>
