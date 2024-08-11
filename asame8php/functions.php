<?php
define("MB",10246789);
function filterRequest($requestname){
return htmlspecialchars(strip_tags($_POST[$requestname]));
}

function insert($conn,$table,$data,$m="1"){
    $keys=implode(", ",array_keys($data));
    $value=":". implode(", :",array_keys($data));
    $sql ="INSERT INTO $table ($keys) VALUES ($value)";
    try{
$stmt= $conn->prepare($sql);
foreach($data as $keys => $value){
$stmt->bindValue(":$keys",$value);
}
$stmt->execute();
$count = $stmt->rowCount();
if($m=="1")
if($count>0){
    echo json_encode(array("status"=>"success"));
}else{
    echo json_encode(array("status"=>"fail"));
}
    }catch(PDOException $e){
        echo json_encode(array("error"=>"error:".$e->getMessage()));
    }
}

function select($conn,$table,$conditions=null,$columns='*',$max=null){
    if(is_array($columns)){
        $columns=implode(", ",$columns);
    }
    if(!empty($conditions)){
        $conditionPartArray =[];
        foreach($conditions as $key => $value){
           $conditionPartArray[]="$key = :$key";
        }
        $conditionPart=implode(" AND ",$conditionPartArray);
    }
    if($conditions==null){
        $sql="SELECT $columns FROM $table ";
    }else{
        $sql="SELECT $columns FROM $table WHERE $conditionPart ";
    }
try{
    $stmt=$conn->prepare($sql);
    if(!empty($conditions)){
        foreach($conditions as $key =>$value){
            $stmt->bindValue(":$key",$value);
        }
    }

    $stmt->execute();
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    if($data){
        if($max!=null){
            return $data[0]['max(id_prodact)'];
        }
        echo json_encode(array("status"=>"success","data"=>$data));
    }else{
        echo json_encode(array("status"=>"fail"));
    }
        }catch(PDOException $e){
         
            echo json_encode(array("error"=>"error:".$e->getMessage()));
        }

}

function delete($conn,$table,$conditions){

    $conditionPartArray =[];
    foreach($conditions as $key => $value){
       $conditionPartArray[]="$key = :$key";
    }
    $conditionPart=implode(" AND ",$conditionPartArray);
    $sql="DELETE  FROM $table ";
    // $sql="DELETE  FROM $table WHERE $conditionPart ";

    
try{
    $stmt=$conn->prepare($sql);

        foreach($conditions as $key =>$value){
            $stmt->bindValue(":$key",$value);
        }
    $stmt->execute();
    
$count = $stmt->rowCount();
if($count>0){
    echo json_encode(array("status"=>"success"));
}else{
    echo json_encode(array("status"=>"fail"));
}
        }catch(PDOException $e){
         
            echo json_encode(array("error"=>"error:".$e->getMessage()));
        }


}


function update($conn,$table,$data,$conditions){

    $setPart =[];
    foreach($data as $key => $value){
       $setPart[]="$key = :$key";
    }
    $setPart=implode(", ",$setPart);
   
    
    $conditionPart =[];
    foreach($conditions as $key => $value){
       $conditionPart[]="$key = :$key";
    }
    $conditionPart=implode(" AND ",$conditionPart);
    

    $sql ="UPDATE  $table SET $setPart WHERE $conditionPart";

    try{
$stmt= $conn->prepare($sql);
foreach($data as $keys => $value){
$stmt->bindValue(":$keys",$value);
}

foreach($conditions as $keys => $value){
    $stmt->bindValue(":$keys",$value);
    }

$stmt->execute();

$count = $stmt->rowCount();
if($count>0){
    echo json_encode(array("status"=>"success"));
}else{
    echo json_encode(array("status"=>"fail"));
}
    }catch(PDOException $e){
        echo json_encode(array("error"=>"error:".$e->getMessage()));
    }
}

// function sendEmail($to,$title,$body){

// // $header ="From: mohammsdlami@gmail.com"."\n"."CC: lamimohammed409@gmail.com";
// //     mail($to,$title,$body,$header);

//     mail($to,$title,$body);
//     echo json_encode(array("status"=>"success"));  
// }


// ///image



function imageUpload($requestimage,$named){
    
    global $msgError;
    $imagename  =rand(1000,10000).$_FILES[$requestimage]['name'];
    $imagetmp   =$_FILES[$requestimage]['tmp_name'];
    $imagesize  =$_FILES[$requestimage]['size'];

    $allowExt   =array("jpg","png","gif","mp3","pdf");
    $strToArray =explode(".",$imagename);
    $ext        =end($strToArray);
    $ext        =strtolower($ext);

    if(!empty($imagename) && !in_array($ext,$allowExt)){
      $msgError[]="Ext";
    }
    if($imagesize >2 * MB){
        $msgError[]="size";
    }
    if(empty($msgError)){
        move_uploaded_file($imagetmp,$named."/" . $imagename);
        return $imagename;
    }else{
        print_r($msgError);
        return "fail";
    }
}

function deleteFile($dir,$imagename){
    if(file_exists($dir."/".$imagename)){
        unlink($dir."/".$imagename);
    }

}

?>