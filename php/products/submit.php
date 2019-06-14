<?php
session_start();

// This code gets the filter
function getTypes() {

    $types = array();
    
    $type_1 = $_GET['type1'];
    $type_2 = $_GET['type2'];
    $type_3 = $_GET['type3'];
    $type_4 = $_GET['type4'];
        
    for($i=0; $i<5; $i++) {
        
        switch("on") {
            case $type_1:
                $types[0] = "on";
                $type_1 = "off";
                break;
            case $type_2:
                $types[1] = "on";
                $type_2 = "off";
                break;
            case $type_3:
                $types[2] = "on";
                $type_3 = "off";
                break;
            case $type_4:
                $types[3] = "on";
                $type_4 = "off";
                break;
        }
    }
        
    return $types;
}
    
function getSearch() {
    $search = trim($_GET['search']);
    return $search;
}
    
$types = getTypes();
$search = getSearch();

// Pass the filter queries in variables to read.php through session
$_SESSION['types'] = $types;
$_SESSION['search'] = $search;

// Redirect to index
header('Location: https://slutprojekt-3-eristr368.c9users.io/public/index.php');

