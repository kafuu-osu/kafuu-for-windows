cd LETS
$path = dir -include "*.o","*.so","*.pyd" -recurse
rm $path
python setup.py build_ext --inplace
