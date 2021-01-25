<?php
// SET HEADER
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// INCLUDING DATABASE AND MAKING OBJECT
require 'database.php';
$db_connection = new Database();
$conn = $db_connection->dbConnection();

// GET DATA FORM REQUEST
$data = json_decode(file_get_contents("php://input"));

//CREATE MESSAGE ARRAY AND SET EMPTY
$msg['message'] = '';

// CHECK IF RECEIVED DATA FROM THE REQUEST
if(isset($data->first_name) && isset($data->last_name) ){
    // CHECK DATA VALUE IS EMPTY OR NOT
    if(!empty($data->first_name) && !empty($data->last_name)){
        
        $insert_query = "INSERT INTO `posts`(first_name,last_name) VALUES(:first_name,:last_name)";
        
        $insert_stmt = $conn->prepare($insert_query);
        // DATA BINDING
        $insert_stmt->bindValue(':first_name', htmlspecialchars(strip_tags($data->first_name)),PDO::PARAM_STR);
        $insert_stmt->bindValue(':last_name', htmlspecialchars(strip_tags($data->last_name)),PDO::PARAM_STR);
        
        if($insert_stmt->execute()){
            $msg['message'] = 'Data Inserted Successfully';
        }else{
            $msg['message'] = 'Data not Inserted';
        } 
        
    }else{
        $msg['message'] = 'Oops! empty field detected. Please fill all the fields';
    }
}
else{
    $msg['message'] = 'Please fill all the fields | first_name, last_name';
}
//ECHO DATA IN JSON FORMAT
echo  json_encode($msg);
?>