#!/bin/bash
counter ()
{
	local let "c1+=$1"
	let "c2+=${1}*2"
}
for i in {1..10}
do
	echo "i = $i"
	counter $i
done
echo "counters are $c1 and $c2"
