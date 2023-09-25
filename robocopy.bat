
# windows robocopy example
Robocopy "C:\Users" "F:\TheBackupLocation" /MIR /XA:SH /XD AppData /XJD /R:5 /W:15 /MT:32

# options:
# source
# dest
# mirror
# exclude hidden system
# exclude appdata
# exclude junction points
# retry 5 times
# wait 15 seconds before retrying
# multithreaded 32 thread limit
