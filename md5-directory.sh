find . -type f -exec md5sum {} \; | sort -k 2 | md5sum
