#!/bin/bash
IFS=$'\n'

for i in $(ls *.pdf); do

	number=`echo $i | cut -d. -f1`
	pdfimages -j $i image
	zip $number.cbz *.jpg
	rm *.jpg

done

mkdir converted
mv *.cbz converted/
