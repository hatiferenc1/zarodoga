<?php
    session_start();
    date_default_timezone_set("Europe/Budapest");

    if(isset($_SESSION['uid'])) $belepve=1  ;
    else                        $belepve=0  ;

    include("adbkapcsolat.php");
    
    
    if($belepve) $lid=$_SESSION['lid']; else $lid=-1;
    mysqli_query($adb, "INSERT INTO naplo   (nid, nurl,                     ndatum, nip,                        nlid)
                        VALUES              ('', '$_SERVER[REQUEST_URI]',   NOW(),  '$_SERVER[REMOTE_ADDR]',    '$lid')
                        ");

?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>
    <?php

    if( isset($_GET['p'])) $p=$_GET['p'] ; else $p="" ;

    if($p==""               )   print "Főoldal"                     ; else
    if($p=="rolunk"         )   print "Információk"                 ; else
    //if($p=="legujabb"       )   print "Legújabb"                    ; else
    if($p=="termekek"       )   print "Hirdetések"                  ; else
    if($p=="kapcs"          )   print "Elérhetőségeink"             ; else
    if($p=="login"          )   print "Belépés"                     ; else
    if($p=="reg"            )   print "Regisztráció"                ; else
    if($p=="profil"         )   print "Profil"                      ; else
    
    
                                print "Lega Loot"   ;
    ?>
    </title>
</head>
<body>
<?php
    if( isset($_GET['p'])) $p=$_GET['p'] ; else $p="" ;
    if(!$belepve){

        if( isset($_GET['p'])) $p=$_GET['p'] ; else $p="" ;
        if($p==""               )   include("login_form.php")                           ; else
        if($p=="reg"            )   include("reg_form.php")                             ; else
                                    print "<h1>404 a kért oldal nem található</h1>"     ;
 
    }
    else{

    
    print "
        <div id='menu'>
            <div id='login'><a href='./?p=profil'>   $_SESSION[unev]         </a> </div>
            [
                <a href='./'                >   Kezdőoldal  </a> |
                <a href='./?p=rolunk'       >   Rólunk                </a> |
                <a href='./?p=termekek'     >   Hírdetések            </a> 
                
                
                
            ]
        </div> 
        " ; 
        if($p==""               )   print "<h1>Lega Loot kezdőoldal</h1>"               ; else
        if($p=="rolunk"         )   print "<h1>Rólunk</h1>"                             ; else
        //*if($p=="legujabb"       )   print "Legújabb"                                  ; else
        if($p=="termekek"       )   include("hirdetes.php")                        ; else                          
        if($p=="login"          )   include("login_form.php")                           ; else
        if($p=="reg"            )   include("reg_form.php")                             ; else
        if($p=="profil"         )   include("profil.php")                               ; else
        if($p=="adatmod"        )   include("adatmod_form.php")                         ; else
        if($p=="jelszomod"      )   include("jelszomod_form.php")                       ; else
        if($p=="termekek"       )   include("hirdetesek_form.php")                      ; else
                                    print "<h1>404 a kért oldal nem található</h1>"     ;

    } 
    
   
?> 






</body>
</html>
