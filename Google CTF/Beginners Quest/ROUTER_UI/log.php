<?php

function get_all_get()
{
        $output = "?";
        $firstRun = true;
        foreach($_GET as $key=>$val) {
        if($key != $parameter) {
            if(!$firstRun) {
                $output .= "&";
            } else {
                $firstRun = false;
            }
            $output .= $key."=".$val;
         }
    }

    return $output;
}

$a = get_all_get();

echo $a;

$file = 'log.txt';
file_put_contents($file, $a . "\n\n\n", FILE_APPEND | LOCK_EX);

?>
