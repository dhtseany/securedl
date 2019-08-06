#/bin/bash

killall transmission-da
sleep 5

#if [[ ("$1" == "toronto") ]];
#    then
#        sudo systemctl stop openvpn-client@toronto
#    else
#        sudo systemctl stop openvpn-client@mexico
#fi

if [[ ("$1" == "ohcanada-udp") ]];
    then
        sudo systemctl stop openvpn-client@ohcanada-udp
    else
        sudo systemctl stop openvpn-client@mexico
fi

