# belt and braces
rsync -arlvpgtSo source target

# attributes only script
myecho=echo
src_path="$1"
dst_path="$2"

find "$src_path" |
  while read src_file; do
    dst_file="$dst_path${src_file#$src_path}"
    $myecho chmod --reference="$src_file" "$dst_file"
    $myecho chown --reference="$src_file" "$dst_file"
    $myecho touch --reference="$src_file" "$dst_file"
  done

# simple backup
sudo rsync --delete -avh /home/* /<destination>/

# simple system backup
#!/bin/bash
if [[ ! -d /mnt/<destination>/`date +%Y%m%d` ]]; then
    sudo mkdir /mnt/<destination>/`date +%Y%m%d`
fi

sudo rsync -aAX -H --info=progress2 \
    --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","ubuntu-cd","ubuntu-desktop"} / \
    /mnt/<destination>/`date +%Y%m%d`/

# sync
#!/bin/bash
DL="/home/username/"
if [[ $(findmnt -M /smb) ]]; then
    echo "[*] Syncing $DL with SERVEFR"
    sudo rsync -uavz --prune-empty-dirs --bwlimit=1M --ignore-existing --remove-source-files "$DL" /destination/
    #find "$DL" -depth -type d -empty -exec rmdir "{}" \;

else
    echo "[*] SERVER not mounted"
fi
