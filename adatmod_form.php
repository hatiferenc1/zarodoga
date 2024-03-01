<?php

    if(!$belepve) die("
    
    <h2>Az oldal megtekintéséhez be kell jelentkezned!</h2>
    
    ");

    $user = mysqli_fetch_array(mysqli_query($adb,"
                            SELECT * FROM user WHERE Uid='$_SESSION[Uid]'
                        "));

?>

<h1>Profil - Adatmódosítás</h1>
<div class='doboz'>
    <h2><?=$_SESSION['Uname'];?></h2>

    <form action='adatmod_ir.php' method='post' >
        <input type='text'      name='Uname'     placeholder='Felhasználónév'    value='<?=$user['Uname'];?>'>    <br>
        <input type='text'      name='Umail'    placeholder='E-mail cím'        value='<?=$user['Umail'];?>'>   <br>
        <input type='password'  name='Upw'      placeholder='Jelszó az ellenőrzéshez'>                          <br>
        <input type='hidden'    name='Ustrid'   value='<?=$user['Ustrid'];?>'>                                  <br>
        <hr width=1250 style='margin:16px 0px;'>
        <input type='submit' value='Adatmódosítás'>
    </form>
</div>
     
