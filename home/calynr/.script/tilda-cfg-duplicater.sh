#!/bin/env bash

cd ~/.config/tilda

N=11

for (( i = 1; i < ${N}; i++ ));
do
	cp "config_0" "config_${i}"
	sed -i '/key=/d' config_${i}
#	grep -v "key=" "config_${i}" > tmpfile && mv tmpfile "config_${i}"
	echo "key=\"F$((${i} + 1))\"" >> "config_${i}"
done
