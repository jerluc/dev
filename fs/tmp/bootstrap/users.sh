#!/bin/bash
set -e

echo "root:$ROOT_PASS" | chpasswd
echo "Changed root password"

useradd -m -d /home/$USERNAME -s /bin/bash $USERNAME
echo "$USERNAME:$PASSWORD" | chpasswd
echo "Created user '$USERNAME'"
