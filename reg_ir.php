<?php
    session_start();

    print_r($_POST);

    include("adbkapcsolat.php");

    if($_POST['Uname']=="")  die("<script> alert('Nem adtad meg a felhasználónevedet!')</script><script>parent.location.href='./?p=reg'</script>");
    if($_POST['Umail']=="")  die("<script> alert('Nem adtad meg az e-mail címed!')</script><script>parent.location.href='./?p=reg'</script>");
    if($_POST['Ufirstname']=="")  die("<script> alert('Nem adtad meg a vezetékneved!')</script><script>parent.location.href='./?p=reg'</script>");
    if($_POST['Ulastname']=="")  die("<script> alert('Nem adtad meg a keresztneved!')</script><script>parent.location.href='./?p=reg'</script>");

    if(strlen($_POST['pw1'])<4)  die("<script> alert('Jelszavad túl rövid!')</script></script><script>parent.location.href='./?p=reg'</script>");
    if($_POST['pw1']!=$_POST['pw2'])  die("<script> alert('Jelszavaid nem egyeznek')</script></script><script>parent.location.href='./?p=reg'</script>");

    if(mysqli_num_rows(mysqli_query($adb, "SELECT * FROM user WHERE Uname = '$_POST[Uname]'")))
    die("<script> alert('Ez a felhasználó név már foglalt!')</script></script><script>parent.location.href='./?p=reg'</script>");

    if(mysqli_num_rows(mysqli_query($adb, "SELECT * FROM user WHERE Umail = '$_POST[Umail]'")))
    die("<script> alert('Ezzel az e-mail címmel már regisztráltál!')</script></script><script>parent.location.href='./?p=reg'</script>");

    if(mysqli_num_rows(mysqli_query($adb, "SELECT * FROM user WHERE Ufirstname = '$_POST[Ufirstname]'")))
    die();
    
    if(mysqli_num_rows(mysqli_query($adb, "SELECT * FROM user WHERE Ulastname = '$_POST[Ulastname]'")))
    die();
    
    
    $Upw    = md5($_POST['pw1']);
    $str10  = randomstring();
    
    
    mysqli_query($adb, "
            INSERT INTO user (Uid,       Uname,              Ufirstname,             Ulastname,              Umail,              Upw,               Uip,                        Udate,  Ustatus,    Urole,  Ustrid)
            VALUES      ('',    '$_POST[Uname]',    '$_POST[Ufirstname]',   '$_POST[Ulastname]',    '$_POST[Umail]',    '$Upw',  '$_SERVER[REMOTE_ADDR]',    NOW(),  'A',        'User', '$str10');
            ");
            

    mysqli_close($adb);

    print "<script> 
                alert('Köszönjük regisztrációdat')
                parent.location.href='./'
            </script>
    ";
?>