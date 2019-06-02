<?php
require('../php/config/Database.php');
require('../php/objects/Products.php');

$database = new Database();
$db = $database->getConnection();

$product = new Products($db);

$stmt = $product->readAll();
$num = $stmt->rowCount();
 
if($num>0){
    
    $results = $stmt->fetchAll();
    
}
 
