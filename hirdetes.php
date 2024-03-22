<?php
    //kell if ide

    $kekep = mysqli_query($adb , "
            SELECT * 
            FROM post
            ORDER BY Ptime
    ");

    print "<div class='container'>";
    while($posztsor = mysqli_fetch_assoc($kekep))
    {
        $postuser = mysqli_fetch_array(mysqli_query($adb , "
                    SELECT * 
                    FROM user
                    WHERE Uid = '$posztsor[PUid]'
        " ));
        print "
        <div class='hirdetesek'>
            <figure>
                <a>
                    <img src='./kiskep/$posztsor[Ppicture]'>
                </a>
                <figcaption>
                    <p>
                        $posztsor[Ptitle]
                    </p>
                    <p>
                        $postuser[Uname]
                    </p>
                </figcaption>   
            <figure> 
        </div>   
        ";
    }
    print "<div style='clear:both;'>
            </div>
            </div>"


?>