<?php

    if(!$belepve) die("
    
    <h2>Az oldal megtekintéséhez be kell jelentkezned!</h2>
    
    ");

    $user = mysqli_fetch_array(mysqli_query($adb,"
                            SELECT * FROM user WHERE Uid='$_SESSION[Uid]'
                        "));

?>

<h1>Profil - Jelszó módosítása</h1>
<div class='doboz'>
    <h2><?=$_SESSION['Uname'];?></h2>

    <form action='jelszomod_ir.php' method='post' >
        <input type='password'  name='Upw'      placeholder='Jelenlegi jelszavad'>      <br>
        <input type='password'  name='pw1'      placeholder='Új jelszavad'>             <br>
        <input type='password'  name='pw2'      placeholder='Jelszó megerősítése'>      <br>
        <input type='hidden'    name='Ustrid'   value='<?=$user['Ustrid'];?>'>          <br>
        <hr width=1250 style='margin:16px 0px;'>
        <input type='submit' value='Jelszómódosítás'>
    </form>
</div>
     
