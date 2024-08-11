



<?php


include '../connect.php';

switch($_GET['mark'])
{

    case "delete":delete($con,"users",[]);
    break;
  
   
    

}



?>