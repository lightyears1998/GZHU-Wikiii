# Simple tutorials for Linux user

> [Chinese:](https://github.com/GZHU-Dress/GZHU-Wikiii/blob/master/ruijie/README_zh.md)

## Campus network verification

### Official Client

Depends: "systemd" "screen"

- Creat a folder `/usr/bin/rjsupplicant` by root permission.
- Move `./official_pkg/*` to `/usr/bin/rjsupplicant`.
- Add your account information to `ruijie.sh`.
- Move `ruijie.sh` to `/usr/bin/rjsupplicant` and add the executable permission for it.
- Start your systemd service by `sudo systemctl start ruijie.service`.

Official Client Download:

[Download](http://202.192.18.32:8081/Setup/RG_Supplicant_For_Linux_V1.31.zip)

md5: `2ef856e84f49180eeb733b181a3f0474`

### Minieap client
Thanks for the contributions of [ysc3839](https://github.com/ysc3839) and [the original author](https://github.com/updateing/minieap), now you can use `minieap` to verify the campus network. **Clone repository and check out to the gzhu branch** to compile the executable file.

[Github page](https://github.com/GZHU-Dress/minieap)

How to use:
```shell
sudo ./minieap -w -u <id> -p <password> -n <network device> --pkt-plugin rjv3 -d 1 -a 1 --rj-option 79:02
```
### Relay client

If you want to relay the network by a wireless router, you need to flash the OpenWRT/LEDE image file to your wireless router. And then check this pages:

Fork From:

[agentx1](https://bitbucket.org/CrazyBoyFeng/agentx1)

Other Version:

[agentx1 for LEDE/OpenWRT](https://github.com/GZHU-Dress/agentx1-lede)

Example:

Use the ssh command to log in to the wireless router at first and upload the suitable client of the architecture(eg:`agentx1`) to `/usr/bin/`.

```shell
agentx1 -L br-lan -W eth0.2 -p LOCAL -a AFTER
# At this time you need to open ruijie client on your computer and complete the certification.
opkg update
opkg install screen
screen agentx1 -L br-lan -W eth0.2 -p LOCAL -a AFTER  # Background process
```

Note:

`rjsupplicant_multi_nic` is a cracked version which allows you enable multiple NICs.

## IPV6 penetrate

If you couldn't use the relay way to get the ipv6 address, you can try to add an ipv6 penetrate rule. Install ebtables at first.

Example:
```shell
ebtables -t broute -A BROUTING -p ! ipv6 -j DROP -i eth0.2
brctl addif br-lan eth0.2
```
