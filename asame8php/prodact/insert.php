
<?php


include '../connect.php';

switch($_GET['mark'])
{

    case "add_pro_stander":add_pro_stander("img_stander");
    break;
    case "insert_prodact_car_sale":insert_prodact_car_sale();
    break;
    case "add_pro_clothes":add_pro_clothes();
    break;
    case "insert_Computer":insert_Computer();
    break;
    // case "insert_image":insert_image();
    // break;


}




function add_pro_stander($name_fil)
{    global $con;

    $img_primary=$_FILES['name_img'];
    $n=rand(1000,10000);

    $nameimg="prodact/imageprodact/$name_fil/".$n.$img_primary['name'][0];

 $data=[


    "id_main_section"=>filterRequest('id_main_section'),
    "id_sub_section"=>filterRequest('id_sub_section'),
    "id_secondary_section"=>filterRequest('id_secondary_section'),
    "location"=>filterRequest('location'),
    "price_prodact"=>filterRequest('price_prodact'),
    "name_prodact"=>filterRequest('name_prodact'),
    "dir_prodact"=>filterRequest('dir_prodact'),
    "type_money"=>filterRequest('type_money'),
    "user_number"=>filterRequest('user_number'),
    "publish_date"=>"8/2/2014",
    "ad_type"=>"vip",
    "number_views"=>"100",
    "Delivery"=>"yes",
    "img_primary"=>$nameimg,

 ];
    move_uploaded_file($img_primary['tmp_name'][0],"imageprodact/".$name_fil."/".$n.$img_primary['name'][0] ); 
    insert($con,"table_products",$data,"2");
    insert_image($name_fil,$img_primary,$n.$img_primary['name'][0]);

}


function insert_prodact_car_sale()
{

    global $con;

    add_pro_stander("img_car");    

    $max=select($con,"table_products",null,"max(id_prodact)","max");
   
 $data2=[

    "id_pro"=>$max,
    "year"=>filterRequest('year'),
    "speci"=>filterRequest('speci'),
    "number_of_seats"=>filterRequest('number_of_seats'),
    "how_walks"=>filterRequest('how_walks'),
    "movement_type"=>filterRequest('movement_type'),
    "fuel_type"=>filterRequest('fuel_type'),
    "features"=>filterRequest('features'),
    "color_car"=>filterRequest('color_car'),
    "state"=>filterRequest('state'),
    
 ];

 insert($con,"selling_car_details",$data2,"2");

}


function add_pro_clothes()
{
    global $con;
    
    add_pro_stander("img_clothes");    
 $max=select($con,"table_products",null,"max(id_prodact)","max");
   
 $data2=[

   "id_por"=>$max,
   "colors"=>filterRequest('colors'),
   "size"=>filterRequest('size'),
   "type_clothes"=>filterRequest('type_clothes'),
  
 ];

 insert($con,"selling_clothes_details",$data2,"2");
}

function insert_Computer()   
{
    global $con;

    add_pro_stander("img_computer");    

    $max=select($con,"table_products",null,"max(id_prodact)","max");
   

    $data=[
    "id_por"=>$max,
    "ram"=>filterRequest('ram'),
    "momery"=>filterRequest('momery'),
    "color"=>filterRequest('color'),
    "petary"=>filterRequest('petary'),
    "conditions"=>filterRequest('conditions'),
    ];
    insert($con,"computer_phone_details",$data);

    $data2=[
    "id_por"=>$max,
    "graphics_card"=>filterRequest('graphics_card'),
    "screen_size"=>filterRequest('screen_size'),
    "core"=>filterRequest('core'),
    "genration"=>filterRequest('genration'),
    "momery_type"=>filterRequest('momery_type'),
    ];

    insert($con,"computer_details",$data2);    
}



function insert_image($name_fil,$image,$img_pri)
{
   
    global $con;

// $image=$_FILES['image'];
$id_pro=select($con,"table_products",null,"max(id_prodact)","max");

$n=rand(1000,10000);

// $m=mysqli_query($con,"select max(id_prodact) as max_v from table_products");
//        $b=$m->fetch_assoc();
//     $id_pro=$b["max_v"];
 


move_uploaded_file($image['tmp_name'][0],"imageprodact/".$name_fil."/".$img_pri); 
insert($con,"imags",["name_image"=>"prodact/imageprodact/$name_fil/".$img_pri,"id_pro"=>$id_pro],"2");

for( $i=1; $i<count($image["name"]); $i++)
{

    $nameimg="prodact/imageprodact/$name_fil/".$n.$image['name'][$i];
    move_uploaded_file($image['tmp_name'][$i],"imageprodact/".$name_fil."/".$n.$image['name'][$i]); 
    if($i==count($image["name"])-1)
insert($con,"imags",["name_image"=>$nameimg,"id_pro"=>$id_pro],"1");
else 
insert($con,"imags",["name_image"=>$nameimg,"id_pro"=>$id_pro],"2");


}


}

?>