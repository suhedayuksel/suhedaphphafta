<?php
session_start();

if(!isset($_SESSION['kadi'])){
    die('giriş yetkiniz yoktur.');
}

require_once('baglan.php');

?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="../css/style.css">

    <title>Başlık</title>
    
    <script src="//cdn.ckeditor.com/4.18.0/full/ckeditor.js"></script>

</head>

<body>


<section id="admincontent">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2 bg-dark text-white">
            <h2>Arı Bilgi </h2>
            <ul class="p-0">
                <li><a href="dashboard.php">başlangıç</a></li>
                <li><a href="sayfalar.php">sayfalar</a></li>
                <li><a href="yazilar.php">yazılar</a></li>
                <li><a href="yorumlar.php">yorumlar</a></li>
                <li><a href="kategori.php">kategori</a></li>
                <li><a href="mesajlar.php">mesajlar</a></li>
                <li><a href="ebulten.php">e-bülten üyleri</a></li>
                <li><a href="logout.php">çıkış</a></li>
                
            </ul>
        </div>
        <div class="col-md-10">