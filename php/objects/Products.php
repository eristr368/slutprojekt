<?php

class Products {
    
    private $conn;
    private $table_name = "Product";
 
    public $product_id;
    public $product_name;
    public $img;
    public $description;
    public $category_id;
 
    public function __construct($db){
        $this->conn = $db;
    }
    
    function readAll(){
        
        $query = "SELECT * FROM "."  $this->table_name";
        $stmt = $this->conn->prepare($query);
        $stmt->execute(); 
        
        return $stmt;
        
    }
    
}
