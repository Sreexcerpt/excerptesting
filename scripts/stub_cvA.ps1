$file='c:\Users\Admin\Desktop\except\excerptesting\dist\client\assets\main-BduUhPhs.js'
$s=Get-Content -Raw -Path $file
$new=[regex]::Replace($s,'(?s)},CvA=\(\)=>\{.*?\},IvA=','},CvA=()=>null, IvA=')
if($new -ne $s){Set-Content -Path $file -Value $new; Write-Output 'UPDATED'} else {Write-Output 'NO_CHANGE'}
