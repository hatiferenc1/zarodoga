<?php
    session_start();

    print_r($_POST);

    if($_POST['Uname'] =="")     die("<script> alert('Nem adtad meg a nevedet!')</script><script>parent.location.href='./?p=profil'</script>");

    if($_POST['Umail']=="")     die("<script> alert('Nem adtad meg az e-mail-címedet!')</script><script>parent.location.href='./?p=profil'</script>");

    include("adbkapcsolat.php");

    if(mysqli_num_rows(mysqli_query($adb, "SELECT * FROM user WHERE Uname='$_POST[Uname]'  AND Ustrid!='$_POST[Ustrid]'")))
    die("<script> alert('Ez a felhasználó név már foglalt!')</script><script>parent.location.href='./?p=profil'</script>");

    if(mysqli_num_rows(mysqli_query($adb, "SELECT * FROM user WHERE Umail='$_POST[Umail]' AND Ustrid!='$_POST[Ustrid]'")))
    die("<script> alert('Ezzel az e-mail címmel már regisztráltál!')</script><script>parent.location.href='./?p=profil'</script>");

    $user = mysqli_fetch_array(mysqli_query($adb, "SELECT Upw FROM user WHERE Ustrid='$_POST[Ustrid]'"));
    if(md5($_POST['Upw'])!=$user['Upw'])  
    die("<script> alert('Hibás jelszó!')</script><script>parent.location.href='./?p=profil'</script>");
    
    $t = mysqli_query($adb, "
            UPDATE  user
            SET     Uname    =   '$_POST[Uname]',
                    Umail   =   '$_POST[Umail]'
            WHERE   Ustrid  =   '$_POST[Ustrid]'
    ");

    print "
        <script>
            alert('Az adatok módosítása megtörtént.')
            parent.location.href='./?p=profil'
        </script>
    ";


    mysqli_close($adb);

?>