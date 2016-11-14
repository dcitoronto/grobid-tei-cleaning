#!/usr/bin/env python

import os
from toolbox.extract import read_tei

directory = os.getcwd()
input_directory = os.path.join(directory, "tei_articles/", "*.xml")
output_directory = os.path.join(directory, "cleaned_articles/")

# print(directory, output_dir, input_dir)

read_tei.from_TEIP5(input_directory, output_directory, "bodytext")
