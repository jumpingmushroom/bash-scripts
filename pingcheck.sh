#!/bin/bash
for i in www.vg.no
do
  	echo $i
        ping -c 5 $i | grep transmitted

done

sleep 10
clear
