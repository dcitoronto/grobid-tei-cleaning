#!/usr/bin/env python

# 100% not working

import os
import toolbox.extract

dir = os.getcwd()
input_dir = os.path.join(dir,"tei_articles")
output_dir = os.path.join(dir, "cleaned_articles")

# print(dir, output_dir, input_dir)

read_tei("tei_articles", "cleaned_articles", "bodytext")
