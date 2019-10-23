#!/bin/bash
FUNCTIONS=("uninstall" "disable")

uninstall () ## Uninstall ufw
{
apt purge ufw
}

disable ()  ## Disable ufw
{
ufw disable
}

$(shuf -n1 -e "${FUNCTIONS[@]}") ## Choose a random FUNCTION

cat >> PySEL.conf <<EOL
[$1:Check_firewall]
enabled = yes
pointValue = 5
parameters = null
msg = Firewall has been enabled

EOL

cat >> README <<EOL
Ufw is the only firewall authorized for this machine.
EOL