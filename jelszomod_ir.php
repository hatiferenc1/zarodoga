<?php
    session_start();

    print_r($_POST);

    if($_POST['Upw'] =="")              die("<script> alert('Nem adtad meg a jelszavad!')</script>");

    include("adbkapcsolat.php");

    if(strlen($_POST['pw1'])<4)         die("<script> alert('Jelszavad túl rövid!')</script>");
    if($_POST['pw1']!=$_POST['pw2'])    die("<script> alert('Jelszavaid nem egyeznek')</script>");
   
    $user = mysqli_fetch_array(mysqli_query($adb, "SELECT Upw FROM user WHERE Ustrid='$_POST[Ustrid]'"));
    if(md5($_POST['Upw'])!=$user['Upw'])  
    die("<script> alert('Hibás jelszó!')</script>");
    
    $Upw    = md5($_POST['pw1']);

    $t = mysqli_query($adb, "
            UPDATE  user
            SET     Upw    =    md5('$_POST[pw1]')
            WHERE   Ustrid  =   '$_POST[Ustrid]'
    ");

    print "
        <script>
            alert('A jelszavad módosítása megtörtént.')
        </script>
    ";


    mysqli_close($adb);

?>