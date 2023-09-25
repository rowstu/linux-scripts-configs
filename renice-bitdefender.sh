for f in $(pgrep BDLDaemon; pgrep Bitdefender); do renice -n +20 -p $f ; done

for f in $(pgrep BDCoreIssues; pgrep Bitdefender); do renice -n +20 -p $f ; done

for f in $(pgrep BDUpdDaemon; pgrep Bitdefender); do renice -n +20 -p $f ; done
