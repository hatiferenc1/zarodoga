<?php
    session_start();

    

    include("adbkapcsolat.php");

    if($_POST['user']=="")  die("<script> alert('Nem adtad meg az azonosítódat')</script><script>parent.location.href='./'</script>");

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
            INSERT INTO login    (Lid,  Ldate,  Lip,                        Luid) 
            VALUES              ('',    NOW(),  '$_SERVER[REMOTE_ADDR]',    '$sor[Uid]');
        ");
        $_SESSION['Lid']    =   mysqli_insert_id($adb);

        print "
            <script>
                parent.location.href='./?p=fooldal'
            </script>
        ";
        
        
    }
    else 
    {
        die("<script> alert('Hibás belépési adatok!'); parent.location.href='./'</script>");

    
    }

    mysqli_close($adb);

?>