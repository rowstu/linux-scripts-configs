#!/usr/bin/env python3
#python script to lint yaml files

# take input from command line for the yaml file to check

# sanity check the file exists etc

# print help if no input passed

import argparse
from yaml import load, Loader

parser = argparse.ArgumentParser(description='YAML linter')
parser.add_argument('-i','--input', help='Input file name',required=True)
args = parser.parse_args()

load(open(args.input), Loader=Loader)