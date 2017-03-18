#!/bin/sh

echo "Give me a number x: "
read x
echo "Give me a number y: "
read y
echo "# The expr method:"
echo ""
echo ""
echo exprans=`expr $x + $y`
exprans=`expr $x + $y`
echo ""
echo "# The bc method:"
bcans=`echo $x + $y | bc`
echo ""
echo addition to expr, $x + $y = $exprans
echo addition to bc,   $x + $y = $bcans
