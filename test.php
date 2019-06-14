<?php

/*function outside() {
    
    function inside() {
    
    $array = array(); 
        
        for($i=0;$i<11;$i++) {
            $value = "on";
            switch($value){
                case "on":
                    $array['1']['on'] = $new_input['1'];
                    echo "yes";
                break;
                default:
                    echo "default activated";
            }
                
        }
        
        return $array;
    }
    
    $array = inside();
    return $array;
}

$array = outside();
var_dump($array);
var_dump($new_input);*/

$array = array();

$array[0] = "on";

var_dump($array);


