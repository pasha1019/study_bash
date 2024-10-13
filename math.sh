#!/bin/bash
var1=$1
var2=$2
#let "var1=$var1+$var2" # add
#echo $var1 
#var1+=$var2 # concatenation
#echo $var1
let "var1=+var2" # var2 in var1
echo $var1
#var1=$var1+$var2 # string var1+var2
#echo $var1