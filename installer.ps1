# random string for directories
function random_text {
    return -join ((65..90) + (97..122) | Get-Random -Count 5 | % {
        [char]$_})
    
}
# working directory variables
$wd = random_text
$path = "$env:temp/$wd"
$initial_dir = %cd%
# echo $wd

# go to temp, make working directory
mkdir $path
cd $path
echo "" > pro.txt 
# del $path
cd $initial_dir

del installer.ps1



