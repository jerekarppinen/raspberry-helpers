<?php

$username = "xxx";
$password = "xxx";

$host = "http://localhost:8083/ZWaveAPI/Run/devices[4]";

$process = curl_init($host);
curl_setopt($process, CURLOPT_USERPWD, $username . ":" . $password);
curl_setopt($process, CURLOPT_RETURNTRANSFER, TRUE);
$return = curl_exec($process);
curl_close($process);

$json = json_decode($return);

print_r($json->instances->{0}->commandClasses->{49}->data->{3}->val->value);

?>
