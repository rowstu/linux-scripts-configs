#!/bin/bash

# background daemon
ssh -i .ssh/key.pem -CnfND8080 user@server

-C  Requests gzip compression of all data
-T  Disable pseudo-tty allocation
-N  Do not execute a remote command. This is useful for just forwarding ports.
-f  Requests ssh to go to background just before command execution.
-n  Redirects stdin from /dev/null (actually, prevents reading from stdin).
-q  Quiet mode. Causes most warning and diagnostic messages to be suppressed.


# to keep the terminal open:
ssh -i .ssh/key.pem -D8080 user@server
