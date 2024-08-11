
<?php


include '../connect.php';

switch($_GET['mark'])
{

    case "select_section_main":select($con,"table_main");
    break;
    case "select_prodact":select_prodact();
    break;
    case "select_Car_Where_Year":select_Car_Where_Year();
    break;

    case "select_Car_Where_Marka":select_Car_Where_Marka();
    break;
    
    case "select_image":select_image();
    break;
    case "select_deatiles_car":select_deatiles_car();
    break;
    case "select_pro_where_view_number":select_pro_where_view_number();
    break;
    case "select_pro_car":select($con,"table_products",["id_sub_section"=>'1']);
    break;
    

}


function select_prodact()
{    global $con;


    $condaction=[
        "id_main_section"=>filterRequest('id_main_section'),
        "id_sub_section"=>filterRequest('id_sub_section'),
    ];
    select($con,"table_products",$condaction);

   
}



function select_Car_Where_Year()
{
    global $con;

    $year=$_POST['year'];
    $condaction=[
        "year"=>filterRequest("year"),
    ];
    select($con,"selling_car_details",$condaction);

}


function select_Car_Where_Marka()
{
    global $con;
   
   
    $condaction=[
        "id_secondary_section"=>filterRequest("id_secondary_section"),
    ];
select($con,"table_products",$condaction);
}



function select_image()
{
    global $con;
    $condaction=[
        "id_pro"=>filterRequest("id_pro"),
    ];
    select($con,"imags",$condaction);
    
}


function select_deatiles_car()
{
    global $con;

    $condaction=[
        "id_pro"=>filterRequest("id_pro"),
    ];
    select($con,"selling_car_details",$condaction);
    
    
}
function select_pro_where_view_number()
{
    global $con;
    // $condaction=[
    //     "number_views"=>80,
    // ];
    // select($con,"table_products",$condaction);
    
    $stmt=$con->prepare("SELECT * from table_products where number_views>'50' ");
    $stmt->execute();
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    if($data){
        echo json_encode(array("status"=>"success","data"=>$data));
    }else{
        echo json_encode(array("status"=>"fail"));
    }
    // $r=mysqli_query($con,"select * from table_products where number_views>50 ");
    // $v;
    
    // while($b=mysqli_fetch_assoc($r))
    // {
    //     $v[]=$b;
    // }

//     if(count($v)>0)
// echo json_encode(array("status"=>"sec","data"=> $v));
// else 
// echo json_encode(array("status"=>"fail")); 

}



?>