#!/bin/sh
cd /tmp
get_iplayer --stream --type=liveradio --pid='bbc_6music' | mplayer -cache 64 -
