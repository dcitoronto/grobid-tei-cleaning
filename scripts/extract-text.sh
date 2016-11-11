#! /bin/bash

directory = "outputs"

# Checks to see if there is a directory to put output txts- if not, makes it.
if [ -d $directory ]
then
   echo "outputs directory already exists"
   exit
else
   mkdir $directory
fi

# grobids each pdf and makes a txt in the outputs directory
for file in *.pdf
do
   echo $file 
   curl -v --form input=@./$file localhost:8080/processFulltextDocument > $directory/$file.txt
done

