cd go\src\github.com\kafuu-osu\KafuuAPI
$path = dir -include "*.exe" -recurse
rm $path
go build
cd ../../../../..