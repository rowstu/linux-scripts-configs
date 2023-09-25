# cleanup orphaned packages
pacman -Rsn $(pacman -Qdtq)

# use the awesome tool to look for large stuff in current directory
ncdu

# clear out pacman cache
pacman -Sc

# clear down old journals
journalctl --vacuum-size=50M