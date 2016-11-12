#!/usr/bin/env bash

# Colours
RED='\033[0;31m'
NC='\033[0m' # No Color

directory="tei_articles"

# Checks to see if there is a directory to put output txts- if not, makes it.
if [[ -d $directory ]]
then
   echo "$directory directory already exists"
   exit
else
   mkdir $directory
fi

# grobids each pdf and makes a txt in the outputs directory
for file in *.pdf
do
   echo -e "${RED}$file${NC}"
   curl -v --form input=@./$file localhost:8080/processFulltextDocument > $directory/$file.txt
done
