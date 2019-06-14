<?php
session_start();

class Products 
{
    
    private $conn;
    
    public $product_id;
    public $product_name;
    public $img;
    public $description;
    public $category_id;
    
    public function __construct(PDO $db)
    {
        $this->conn = $db;
    }
    
    
    private function query($sql, $parameters = [])
    {
        $query = $this->conn->prepare($sql);
        $query->execute($parameters);
        return $query;
    }
    
    
    private function fetch($query)
    {
        $num = $query->rowCount();

            if($num>0) {
                $results = $query->fetchAll();
            } else {
                $results = null;
            }
            
        return $results; 
    }
    
    
    private function setFilter($types, $search) 
    {
        $type1 = $types[0];
        $type2 = $types[1];
        $type3 = $types[2];
        $type4 = $types[3];
        
        $sql = "SELECT * FROM Product";
        $_types = array();
        
        if(! empty($type1)) {
            $_types[] = "catagory_id=1";
        }
        
        if(! empty($type2)) {
            $_types[] = "catagory_id=2";
        }
        
        if(! empty($type3)) {
            $_types[] = "catagory_id=3";
        }
        
        if(! empty($type4)) {
            $_types[] = "catagory_id=4";
        }
        
        if (count($_types) > 0) {
            $sql .= " WHERE " . implode(' OR ', $_types);
        } else {
            $sql = ""; 
        }
        
        if(! $search == "") {
            $sql .= " AND product_name OR description = '$search'";
        }
        
        return $sql; 
    }
    
    
    public function read($types, $search)
    {
        
        $sql = $this->setFilter($types, $search);
        $query = $this->query($sql);
        $results = $this->fetch($query);
        
         foreach ($types as $i => $type) {
            unset($types[$i]);
        }
        
        return $results;
    }

}
