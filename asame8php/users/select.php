
<?php


include '../connect.php';

switch($_GET['mark'])
{
 case "select_user":select_user();
 break;
    

}

function select_user()
{
    global $con;    
    $condaction=[
        "id_user"=>filterRequest('id_user'),
    ];
    
    select($con,"users",$condaction);
   
}


?>