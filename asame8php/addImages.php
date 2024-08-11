<?php

include 'connect.php';



    $dir="prodact";
    $name_file="imageprodact/img_car";
    // global $con;

$image=$_FILES['image'];

$name=$image['name'];

// $m=mysqli_query($con,"select max(id_prodact) as max_v from table_products");
//        $b=$m->fetch_assoc();
//     $id_pro=$b["max_v"];
$max=select($con,"table_products",null,"max(id_prodact)","max");

       
for( $i=0; $i<count($name); $i++)
{
 move_uploaded_file($image['tmp_name'][$i],$name_file."/".$image['name'][$i]); 
 $f=$dir."/".$name_file."/".$image['name'][$i]; 
  
 insert($con,"imags",["name_image"=>$f,"id_pro"=>$max]);
//  $a=mysqli_query($con,"insert into imags values(null,'$f','$max') ");
}
// if($a){
// echo json_encode(array("status"=>"success"));
// }else{
//     echo json_encode(array("status"=>"fail"));
// }


?>