cd go\src\github.com\kafuu-osu\hanayo
$path = dir -include "*.exe" -recurse
rm $path
go build
cd ../../../../..