# securedl

This is a work in progress control system for a secured experience using OpenVPN with the transmission client.

SecureDL: A secured means of automating a more private torrent downloading experience. 

This software relies on transmission's web gui. 

## Prerequisites:
- sudo rights
- systemd
- openvpn package
- OpenVPN Profiles setup in /etc/openvpn/client using .conf files. See https://wiki.archlinux.org/index.php/OpenVPN#systemd_service_configuration for more information.
- [transmission-gui](https://www.archlinux.org/packages/extra/x86_64/transmission-cli/) [installed](https://wiki.archlinux.org/index.php/Transmission#The_GUI_way). You'll need to be able to successfully connect to your VPN provider by using the following command:
```
# systemctl start openvpn-client@profile-name
```

## Usage:
```
./securedl.sh <runCommand> <runCondition>
```

## Setup Instructions:

1. First create the config directory in /etc:
```
# mkdir -p /etc/securedl
```

2. Copy main.cfg to /etc/securedl/main.cfg
```
# cp main.cfg /etc/securedl
```

3. Edit main.cfg and update the unique values:
```
# nano /etc/securedl/main.cfg
```

Edit the value for *allowedNetwork* to correctly reflect your main local network. For example, if your PC has an IP address of 192.168.1.25, your *allowedNetwork* value would be: 

```
"192.168.1.*"
```
Make sure you add the * at end for the last octet, and make sure you leave the quotation marks "xxx"

4. Mark the primary file as executable:
```
# chmod +x securedl
```

5. Copy the primary file to /usr/bin:
```
# cp securedl /usr/bin
```

6. Now it's time to scan for your VPN profiles. The default location for most OpenVPN setups with systemd is /etc/openvpn/client and SecureDL will look for .conf files.
```
# securedl scan
```

7. The previous step should have created /etc/securedl/