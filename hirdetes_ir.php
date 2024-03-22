<?php
    session_start();

    $ppicture = $_FILES['Ppicture'];

    include("adbkapcsolat.php");
    include("func_sizing.php");
    if($_POST['Ptitle']=="" )   die("<script>alert('Irjá a posztnak címet')</script>");
    if($_POST['Pcost']==""  )   die("<script>alert('Adj meg árat')</script>");
    if($_POST['Ptitle']=="" )   die("<script>alert('Irjá a posztnak címet')</script>");

    $kepnev = date('YmdHis_') . $_POST['Uid'] . "_" . randomstring(10) . substr($ppicture['name'], strrpos($ppicture['name'], "."));
    move_uploaded_file($ppicture['tmp_name'], "./images/" . $kepnev);
    
    $t = strtolower(substr($kepnev , -4));

    resize_crop_image(230,230, "./images/".$kepnev , "./kiskep/". $kepnev);

    if($t==".jpg" || $t =="jpeg" || $t=".png" || $t=="webp")
    {
        $t = mysqli_query($adb ,"
        INSERT INTO post (Pid,  PUid,             Ptitle,           Pdesc,            Pcity,           Ptel,           Pcost,           Ppicture,   Ptime  )
        VALUES           ('',  '$_SESSION[Uid]',   '$_POST[Ptitle]', '$_POST[Pdesc]',  '$_POST[Pcity]',  '$_POST[Ptel]', '$_POST[Pcost]', '$kepnev',  NOW());
        ");
        
        print "
        <script>
            alert('Sikeres posztfeltöltés')
            parent.location.href='./?p=fooldal'
        </script>
        ";
    }
    else print "<script>alert('Nem jó a kép formátuma')</script>";

    mysqli_close($adb);

    

?>