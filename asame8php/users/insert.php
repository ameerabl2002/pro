<?php


include '../connect.php';

switch($_GET['mark'])
{
    case "insert_user":add_user();
    break;

}

function add_user()
{

    global $con;
    $img_user=$_FILES['name_img'];
    $n=rand(1000,10000);
    $nameimg="users/imageuser/".$n.$img_user['name'];

    $data=[
        "id_user"=>filterRequest('id_user'),
        "name_user"=>filterRequest('name_user'),
        "phone_user"=>filterRequest('phone_user'),

    // "date_user"=>"8/2/2014",
    "number_followers"=>"0",
    "evalution_user"=>"0",
    "name_img"=>$nameimg,
    ];
  
    move_uploaded_file($img_user['tmp_name'],"imageuser/".$n.$img_user['name'] ); 
    insert($con,"users",$data);

}

?>