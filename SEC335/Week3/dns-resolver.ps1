$network = Read-Host
$dns = Read-Host
$a,$b,$c,$d = $network.Split(".")
[int]$d = $d
for($d; $d -lt 255; $d++){
$newaddress = $a+"."+$b+"."+$c+"."+$d
$test = Resolve-DnsName -DnsOnly $newaddress -Server $dns -ErrorAction Ignore
if($?){
echo $newaddress $test.NameHost
} 
}
