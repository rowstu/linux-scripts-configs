# Get all open ports in hex format
declare -a open_ports=($(cat /proc/net/tcp | grep -v "local_address" | awk '{
print $2 }' | cut -d':' -f2))
# Show all open ports and decode hex to dec
for port in ${open_ports[*]}; do echo $((0x${port})); done