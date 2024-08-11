



<?php


include '../connect.php';

switch($_GET['mark'])
{

    case "delete":delete($con,"table_products",[]);
    break;
  
   
    

}



?>