<?php
    session_start();

    print_r($_POST);

    include("adbkapcsolat.php");

    if($_POST['user']=="")  die("<script> alert('Nem adtad meg az azonosítódat')</script>");

    $Upw = md5($_POST['pw']);
    
    $t = mysqli_query($adb, "
            SELECT  * FROM user
            WHERE   (Uname='$_POST[user]' OR Umail='$_POST[user]') 
            AND     Upw = '$Upw'
            AND     ustatus = 'A'
    ");
    
    if(mysqli_num_rows($t))
    {
        $sor = mysqli_fetch_array($t);

        $_SESSION['Uid']    =   $sor['Uid'];
        $_SESSION['Uname']   =   $sor['Uname'];
        $_SESSION['Umail']  =   $sor['Umail'];
        $_SESSION['Upw']    =   $sor['Upw'];
        $_SESSION['Urole']   =   $sor['Urole'];

        mysqli_query($adb, "
            INSERT INTO login    (Lid ,     Luid,            Ldatum,    Lip) 
            VALUES              ('',      '$sor[Uid]',  NOW(),     '$_SERVER[REMOTE_ADDR]');
        ");
        $_SESSION['Lid']    =   mysqli_insert_id($adb);

        print "
            <script>
                parent.location.href='./'
            </script>
        ";
        
        
    }
    else 
    {
        die("<script> alert('Hibás belépési adatok!')</script>");
    }

    mysqli_close($adb);

?>