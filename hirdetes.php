<?php
    $poszt= mysqli_fetch_array(mysqli_query($adb , "
                                                SELECT * FROM post 
                                                WHERE Pid ='$_GET[c]'
                                                "));

?>





<div class='pdoboz'>
    <h1><?=$poszt['Ptitle'];?></h1>
    <img src="./images/<?=$_GET['k'];?>" style="width: 40%;">
    <p>Leírás: <?=$poszt['Pdesc'];?></p>
    <p>Elérhetőség: <?=$poszt['Ptel'];?></p>
    <p>Város: <?=$poszt['Pcity'];?></p>
    <p>Ár: <?=$poszt['Pcost'];?></p>
</div>