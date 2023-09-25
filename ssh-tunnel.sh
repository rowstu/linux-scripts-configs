
!#/bin/bash

SSH_HOST="user@ip -p port -i $HOME/.ssh/username"

up(){
    ssh -f -N -D 8080 -M -S /tmp/ssh_tunnel_%h.sock -o ExitOnForwardFailure=yes $SSH_HOST \
    printf '%s\n' "ssh tunnel started successfully" || \
    printf '%s\n' "ssh tunnel failed to start"
}

down(){
    ssh -S /tmp/ssh_tunnel_%h.sock -O exit $SSH_HOST
}

if [[ $1 = up ]]; then
    chromium --proxy-server="socks://127.0.0.1:8080";
elif [[ $1 = down ]]; then
    down
else
    printf '%s\n' "Fail…"
    exit 1
fi