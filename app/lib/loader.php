<?php
function AutoLoad($PATH)
{
    foreach (glob($PATH."/*") as $path) {
        if(__FILE__ == $path){
            continue;
        } elseif(is_dir($path)) {
            AutoLoad($path);
        } else{
            require_once $path;
        }
    }
}

AutoLoad(__DIR__);
