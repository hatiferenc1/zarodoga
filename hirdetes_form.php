<?php

    $user = mysqli_fetch_array(mysqli_query($adb , "
    SELECT * FROM user WHERE Uid='$_SESSION[Uid]'
    "));

?>

<div id="content">
    <form method="POST" action="hirdetes_ir.php" enctype="multipart/form-data">
        <input type="text" name="Ptitle" placeholder="Hirdetés neve">
        <input type="text" name="Pdesc" placeholder="Hirdetés leírása">
        <input type="text" name="Pcity" placeholder="Add meg a városod">
        <input type="text" name="Ptel" placeholder="Add meg a telefonszámod">
        <input type="text" name="Pcost" placeholder="Adj meg egy árat">
        <input type="file" name="Ppicture">

        <input type="hidden" name='Ustrid' value='<?=$user['Ustrid'];?>'>
        <input type="hidden" name='Uid' value='<?=$user['Uid'];?>'>
        <hr>
        <input type="submit" value="Feltöltés">
        
    </form>
</div>

