<?php
    session_start();

    include("adbkapcsolat.php");
    
    //session_destroy();

    unset($_SESSION['Uid']);
    unset($_SESSION['Uname']);
    unset($_SESSION['Umail']);
    unset($_SESSION['Upw']);
    unset($_SESSION['Urole']);
    unset($_SESSION['Lid']);

    print "
        <script>
            parent.location.href='./'
        </script>
    ";

    mysqli_close($adb);

?>