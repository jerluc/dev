#!/bin/bash
set -e

echo "root:$ROOT_PASS" | chpasswd
echo "Changed root password"

TMP_PASS=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13`
useradd -m -d /home/$USER -s /bin/bash $USER
echo "$USER:$TMP_PASS" | chpasswd
chage -d 0 $USER
echo "Created user '$USER' with temporary password '$TMP_PASS'"
