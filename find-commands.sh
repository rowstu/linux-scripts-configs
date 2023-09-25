# find old files
find . -mtime +2 | xargs rm

# last accessed
find $1 -type f -exec stat --format '%Y :%y %n' "{}" \; | sort -nr | cut -d: -f2- | head

# find and delete old files
find . -mtime +2 | xargs rm