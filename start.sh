#!/bin/bash

##Generate password
htpasswd -s -bc /etc/radicale/users $RADICALE_USER $RADICALE_PASSWORD

##Enable service
sed -i "s/#ENABLE_RADICALE=yes/ENABLE_RADICALE=yes/" /etc/default/radicale

##Configuration for htpassword
## grep -in type /etc/radicale/config
sed -i "53s/#type = None/type = htpasswd/" /etc/radicale/config
sed -i "110s/#type = None/type = owner_only/" /etc/radicale/config
sed -i "s/#htpasswd_filename = \/etc\/radicale\/users/htpasswd_filename = \/etc\/radicale\/users/" /etc/radicale/config
sed -i "s/#htpasswd_encryption = crypt/htpasswd_encryption = sha1/" /etc/radicale/config

echo 'private_users = '$RADICALE_USER >> /etc/radicale/config

##sed -i "s/#handlers = console,file/handlers = console,file/" /etc/radicale/logging

/usr/bin/radicale
