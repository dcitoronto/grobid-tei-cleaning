#!/usr/bin/env python

import os
from lxml import etree
from io import StringIO, BytesIO
import requests

directory = os.getcwd()
input_dir = os.path.join(directory, "tei_articles", "*.xml")

# for file in...

