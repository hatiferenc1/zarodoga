<?php
    session_start();

    include("adbkapcsolat.php");
    $msg= "";

    if(isset($_POST['upload'])){
        $filename = $_FILES["uploadfile"]["name"];
        $tempname = $_FILES["uploadfile"]["tmp_name"];
        $folder   = "./image/" . $filename;

        $sql = "INSERT INTO image (filename) VALUES($filename)";

        mysqli_connect($db, $sql);

        if(move_uploaded_file($tempname,$folder)){
            echo "<h3> Image uploaded succesfully!<h3>"
        } 
        else 
        {
            echo "<h3> Upload failed!<h3>"
        }
    }
?>