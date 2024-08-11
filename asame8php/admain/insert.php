
<?php


include '../connect.php';

switch($_GET['mark'])
{

    case "insert_section_main":insert_section_main();
    break;
    case "insert_section_sub":insert_section_sub();
    break;
    case "insert_section_secandary":insert_section_secandary();
    break;
    
    
   

}



function insert_section_main()
{
    
    global $con;
    $image=$_FILES['name_img'];
    $n=rand(1000,10000);

$nameimg="admain/imgselction/".$n.$image['name'];
$data=[

    "name_main_section"=>filterRequest('name_main_section'),
    "name_img"=>$nameimg
];

// imageUpload($_FILES['name_img'],"asame8php/admain/imgselction");
move_uploaded_file($image['tmp_name'],"imgselction/".$n.$image['name'] ); 
insert($con,"table_main",$data);

}


function insert_section_sub()
{
    global $con;

    $image=$_FILES['name_img'];
    $n=rand(1000,10000);

    $nameimg="admain/imgselction/".$n.$image['name'];

$data=[
    "id_main_section"=>filterRequest('id_main_section'),
    "name_sub_section"=>filterRequest('name_sub_section'),
    "name_img"=>$nameimg
];
move_uploaded_file($image['tmp_name'],"imgselction/".$n.$image['name'] ); 

insert($con,"table_sub",$data);

}


function insert_section_secandary()
{
    global $con;
    $image=$_FILES['name_img'];
    $n=rand(1000,10000);

    $nameimg="admain/imgselction/".$n.$image['name'];

    $data=[
        "id_main_section"=>filterRequest('id_main_section'),
        "id_sub_section"=>filterRequest('id_sub_section'),
        "name_secondary_section"=>filterRequest('name_secondary_section'),
        "name_img"=>$nameimg
    ];
move_uploaded_file($image['tmp_name'],"imgselction/".$n.$image['name'] ); 
insert($con,"table_secondary",$data);



}


?>