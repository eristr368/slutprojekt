<?php
session_start();

require __DIR__ . "/../classes/config/Database.php";
require __DIR__ .  "/../classes/Products.php";


// Database connection
$database = new Database();
$db = $database->getConnection();

// New object
$product = new Products($db);

// Get filter
$types = $_SESSION['types'];
$search = $_SESSION['search'];

// Filter query and return results
$results = $product->read($types, $search);

return $results;







