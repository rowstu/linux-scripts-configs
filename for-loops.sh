# examples from here:
# https://www.cyberciti.biz/faq/bash-for-loop/

for VARIABLE in 1 2 3 4 5 .. N
do
    command1
    command2
    commandN
done

for VARIABLE in file1 file2 file3
do
    command1 on $VARIABLE
    command2
    commandN
done

for OUTPUT in $(Linux-Or-Unix-Command-Here)
do
    command1 on $OUTPUT
    command2 on $OUTPUT
    commandN
done

for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done

for i in {1..5}
do
   echo "Welcome $i times"
done

echo "Bash version ${BASH_VERSION}..."
for i in {0..10..2}
do
  echo "Welcome $i times"
done

for i in $(seq 1 2 20)
do
   echo "Welcome $i times"
done

for (( EXP1; EXP2; EXP3 ))
do
    command1
    command2
    command3
done
## The C-style Bash for loop ##
for (( initializer; condition; step ))
do
  shell_COMMANDS
done


# set counter 'c' to 1 and condition 
# c is less than or equal to 5
for (( c=1; c<=5; c++ ))
do 
   echo "Welcome $c times"
done


for (( ; ; ))
do
   echo "infinite loops [ hit CTRL+C to stop]"
done

for I in 1 2 3 4 5
do
  statements1      #Executed for all values of ''I'', up to a disaster-condition if any.
  statements2
  if (disaster-condition)
  then
    break              #Abandon the loop.
  fi
  statements3              #While good and, no disaster-condition.
done


# Count dns name server in the /etc/resolv.conf if found
for file in /etc/*
do
        # check if file exists in bash using the if #  
    if [ "${file}" == "/etc/resolv.conf" ]
    then
        countNameservers=$(grep -c nameserver /etc/resolv.conf)
        echo "Total dns ${countNameservers} nameservers defined in ${file}"
        break
    fi
done

for I in 1 2 3 4 5
do
  statements1      #Executed for all values of ''I'', up to a disaster-condition if any.
  statements2
  if (condition)
  then
    continue   #Go to next iteration of I in the loop and skip statements3
  fi
  statements3
done

FILES="$@"
for f in $FILES
do
        # if .bak backup file exists, read next file
    if [ -f ${f}.bak ]
    then
        echo "Skiping $f file..."
        continue  # read next file and skip the cp command
    fi
        # we are here means no backup file exists, just use cp command to copy file
    /bin/cp $f $f.bak
done

# Set three aws zones to create RDS instances 
DB_AWS_ZONE=('us-east-2a' 'us-west-1a' 'eu-central-1a')
 
for zone in "${DB_AWS_ZONE[@]}"
do
  echo "Creating rds (DB) server in $zone, please wait ..."
  aws rds create-db-instance \
  --availability-zone "$zone" \
  --allocated-storage 20 --db-instance-class db.m1.small \
  --db-instance-identifier test-instance \
  --engine mariadb \
  --master-username my_user_name \
  --master-user-password my_password_here
done

# Defines a variable called _admin_ip that contains a list of IP addresses. 
# The IP addresses are separated by the pipe character (|).
_admin_ip="202.54.1.33|MUM_VPN_GATEWAY 23.1.2.3|DEL_VPN_GATEWAY 13.1.2.3|SG_VPN_GATEWAY"
for e in $_admin_ip
do
   ufw allow from "${e%%|*}" to any port 22 proto tcp comment 'Open SSH port for ${e##*|}'
done

for i in {START..END}
do
   commands
done
## step value ##
for i in {START..END..STEP}
do
   commands
done
## example: ping cbz01, cbz02, cbz03, and cbz04 using a loop ##
for i in 0{1..4}
do
    h="cbz${i}"
    ping -c 1 -q "$h" &>/dev/null
    if [ $? -eq 0 ]
    then
        echo "server $h alive"
    else
        echo "server $h dead or can not ping."
    fi
done

# Install the PHP packages listed in the PKGS variable.
PKGS="php7-openssl-7.3  php7-common-7.3  php7-fpm-7.3  php7-opcache-7.3 php7-7.3"
for p in $PKGS
do
   echo "Installing $p package"
   sudo apk add "$p"
done