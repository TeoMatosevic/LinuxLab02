#sudo adduser --no-create-home --shell /bin/bash stjepan

#sudo touch /etc/sudoers.d/stjepan			#stvaranje file-a u koji cu pisati pravila za stjepana

echo "" > /etc/sudoers.d/stjepan			#brisanje ako je nesto vec unutra

sudo cat <<EOT >> /etc/sudoers.d/stjepan
User_Alias      GROUPONE = stjepan

Cmnd_Alias      USERS = /usr/sbin/adduser, /usr/sbin/deluser, /usr/sbin/addgroup, /usr/sbin/delgroup, /usr/bin/passwd, /usr/sbin/usermod, /usr/sbin/groupmod, /usr/bin/chmod, /usr/bin/chown, /usr/bin/chgrp, /usr/sbin/chpasswd
Cmnd_Alias	OTHER = /usr/bin/mkdir, /usr/bin/cp, /usr/bin/ln, /usr/bin/ls, /usr/bin/touch, /usr/bin/sed, /usr/bin/echo, /usr/bin/cut, /usr/bin/cat, /usr/bin/grep, /usr/bin/yes 

GROUPONE        ALL = NOPASSWD: USERS
GROUPONE	ALL = NOPASSWD: OTHER
EOT
