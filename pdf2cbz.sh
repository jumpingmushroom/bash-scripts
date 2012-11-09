#!/bin/bash
IFS=$'\n'

for i in $(ls *.pdf); do

	filename=`basename $i .pdf`
	pdfimages -j $i image
	zip $filename.cbz *.jpg
	rm *.jpg

done

mkdir converted
mv *.cbz converted/
