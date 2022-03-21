<?php

session_start();
session_destroy();

if(!isset($_SESSİON['kadi'])){
    die('giriş yetkiniz yoktur');
}
?>
