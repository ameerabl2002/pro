
<?php


include '../connect.php';

switch($_GET['mark'])
{

    case "select_section_main":select($con,"table_main");
    break;
    case "select_sub":select_sub();
    break;
    case "select_secandary":select_secandary();
    break;
   
    

}

function select_sub()
{
    global $con;
    $conditions=[
        "id_main_section"=>filterRequest('id_main_section'),
    ];
    select($con,"table_sub",$conditions);
}

function select_secandary()
{
    global $con;
    $conditions=[
        "id_main_section"=>filterRequest('id_main_section'),
        "id_sub_section"=>filterRequest('id_sub_section'),
    ];
    select($con,"table_secondary",$conditions);    
}





?>