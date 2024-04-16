<?php
    $poszt= mysqli_fetch_array(mysqli_query($adb , "
                                                SELECT * FROM post 
                                                WHERE Pid ='$_GET[c]'
                                                "));

?>





<div class='pdoboz' style='color:white;'>
    <h1><?=$poszt['Ptitle'];?></h1>
    <img src="./kiskep/<?=$_GET['k'];?>">
    <p>Leírás: <?=$poszt['Pdesc'];?></p>
    <p>Elérhetőség: <?=$poszt['Ptel'];?></p>
    <p>Város: <?=$poszt['Pcity'];?></p>
    <p>Ár: <?=$poszt['Pcost'];?></p>
</div>