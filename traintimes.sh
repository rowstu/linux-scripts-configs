#!/bin/bash

lynx -dump -nolist http://ojp.nationalrail.co.uk/service/ldbboard/dep/CRE/MAN/To | grep -A15 "Due Destination Status Platform Details"
