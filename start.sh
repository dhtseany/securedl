#/bin/bash
if [[ ("$1" == "mexico") ]];
    then
        sudo systemctl start openvpn-client@mexico
        echo "VPN started using $1"
        sleep 10
        transmission-daemon --auth --username arch --password linux --port 9091 --allowed "172.16.254.*"

fi

if [[ ("$1" == "canada2") ]];
    then
        sudo systemctl start openvpn-client@canada2
        echo "VPN started using $1"
        sleep 10
        transmission-daemon --auth --username arch --password linux --port 9091 --allowed "172.16.254.*"
fi

if [[ ("$1" == "toronto-tcp") ]];
    then
        sudo systemctl start openvpn-client@toronto-tcp
        echo "VPN started using $1"
        sleep 10
        transmission-daemon --auth --username arch --password linux --port 9091 --allowed "172.16.254.*"
fi


if [[ ("$1" == "ohcanada-udp") ]];
    then
        sudo systemctl start openvpn-client@ohcanada-udp
        echo "VPN started using $1"
        sleep 10
        transmission-daemon --auth --username arch --password linux --port 9091 --allowed "172.16.254.*"
fi

if [[ -z $1 ]];
        then
                echo "The following connections are available:"
                echo "========================================"
                echo "mexico"
                echo "canada2"
                echo "ohcanada-udp"
                echo "toronto-tcp"
fi
