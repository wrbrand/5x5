$interface = netsh wlan show interfaces; 
$signal = [regex]::split(($interface | findstr "Signal"),"\: ")[1]
$signal = $signal.Substring(0,$signal.Length-2)
$rate = [regex]::split(($interface | findstr "Transmit"),"\: ")[1]

$signalRating = [math]::ceiling($signal/20)
$throughputRating = 0;

if($rate -gt 160) {	$throughputRating = 5; }
elseif($rate -gt 120) {	$throughputRating = 4; }
elseif($rate -gt 80) {	$throughputRating = 3; }
elseif($rate -gt 40) {	$throughputRating = 2; }
elseif($rate -gt 0) {	$throughputRating = 1; }

espeak "$signalRating by $throughputRating"