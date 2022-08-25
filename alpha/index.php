<?php
   $file = $_GET['file'];
   if(isset($file))
   //if(isset($_GET['file']))
   {
       //$file = $_GET['file'];
       include $file;
       //echo '<img src="'.$file.'" /><br />';
   }
   else
   {
       //$file = false;
       include("landingpage.php");
   }
?>
