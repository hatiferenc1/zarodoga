



<?php

    if(!$belepve) die("<h2>Az oldal megtekintéséhez be kell jelentkezned!</h2>");
?>
<h1>Profil</h1>
<div class='doboz'>
    <h2><?=$_SESSION['Uname'];?></h2>

    <ul>
        <li> <a id='gomb' href='./?p=adatmod'> Adatok módosítása</a>
        <li> <a id='gomb' href='./?p=jelszomod'>Jelszó módosítása</a>
        <hr width=1250 style='margin:8px -20px;'>
        <input  type='button' class='kilepes' value='Kilépés' onclick='location.href="logout.php"'>
    </ul>
</div>

