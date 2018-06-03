<?php 
header("Content-Type:application/json");
require 'database-config.php';

if($_SERVER["REQUEST_METHOD"] == "POST"){
   if(isset($_POST["product_name"]) && isset($_POST["description"]) && isset($_POST["price"])){
       
        // $product_id = $_POST["id"];
        $name = $_POST["product_name"];
        // $code = $_POST["product_code"];
    
       
        $description = $_POST["description"];
         $price = $_POST["price"];
        
        // $image = $target_file;
        $target_dir = "img/";
        $target_file = $target_dir .date("YmdHis"). basename($_FILES["fileToUpload"]["name"]);
        move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file);
       $sql = "INSERT INTO budget(product_name,description ,price, image) VALUES('".$name."','".$description."','".$price."','".$target_file."')";


        $result = mysqli_query($conn, $sql);
        if($result){
            $data["result"] = true;
            $data["message"] =  "Add product successfully";
            // echo header("location: index.php");
            // die();
        }else{
            $data["result"] = false;
            $data["message"] =  "Can not add product. Error: ".mysqli_error($conn);
        }
    }else{
        $data["result"] = false;
        $data["message"] = "Invalid product information";
    }
    echo json_encode($data);
}
 ?>