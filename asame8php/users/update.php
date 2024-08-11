
<?php


include '../connect.php';


    global $con;
    $img_user=$_FILES['name_img'];
    $n=rand(1000,10000);
    $nameimg="users/imageuser/".$n.$img_user['name'];
    $data=[
        "name_user"=>filterRequest('name_user'),
        "phone_user"=>filterRequest('phone_user'),
        "name_img"=>$nameimg,
    ];
    move_uploaded_file($img_user['tmp_name'],"imageuser/".$n.$img_user['name'] ); 

            update($con,"users",$data,["id_user"=>filterRequest('id_user'),]);







?>