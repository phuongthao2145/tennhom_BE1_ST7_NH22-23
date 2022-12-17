<?php
require "config.php";
require "models/db.php";
require "models/product.php";
require "models/manufacture.php";
require "models/protype.php";
$product = new Product;
$manu = new Manufacture;
$type = new Protype;
if(isset($_GET['id'])){
    $id = $_GET['id'];
    //goi phuong xoa
    $product->delProduct($id);
    //header ve trang product
    header('location:product.php');
}