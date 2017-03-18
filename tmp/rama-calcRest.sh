# !/bin/sh

echo "Give me a number x: "
read x
echo "Give me a number y: "
read y
echo echo Other arithmetic operators from expr
echo exprans=`expr $x - $y`
echo subtraction $x - $y = $exprans
echo ''
exprans=`expr $x * $y`
echo multiplication $x * $y = $exprans
echo ''
exprans=`expr $x / $y`
echo division $x / $y = $exprans
echo ''
exprans=`expr $x % $y`
echo modulus $x % $y = $exprans
echo ''
exprans=`expr $x != $y`
echo not equality $x != $y = $exprans
echo ''
exprans=`expr $x == $y`
echo equality $x == $y = $exprans

