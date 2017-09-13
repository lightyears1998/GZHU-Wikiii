# Simple tutorials for Linux user

Depends: "systemd" "screen"

- Creat a folder `/usr/bin/rjsupplicant` by root permission.
- Move `./official_pkg/*` to `/usr/bin/rjsupplicant`.
- Add your account information to `ruijie.sh`.
- Move `ruijie.sh` to `/usr/bin/rjsupplicant` and add the executable permission for it.
- Start your systemd service by `sudo systemctl start ruijie.service`.

Official Client:

[Download](http://202.192.18.32:8081/Setup/RG_Supplicant_For_Linux_V1.31.zip)

md5: `2ef856e84f49180eeb733b181a3f0474`

If you want to relay the network by a wireless router, you need to flash the OpenWRT/LEDE image file to your wireless router. And then check this pages:

Fork From:

[agentx1](https://bitbucket.org/CrazyBoyFeng/agentx1)

Other Version:

[agentx1 for LEDE/OpenWRT](https://github.com/GZHU-Dress/agentx1-lede)

Example:

Use the ssh command to log in to the wireless router at first and upload the suitable client of the architecture(eg:`agentx1`) to `/usr/bin/`.

```shell
ruijie -L br-lan -W eth0.2 -p LOCAL -a AFTER
# At this time you need to open ruijie client on your computer and complete the certification.
opkg update
opkg install screen
screen ruijie -L br-lan -W eth0.2 -p LOCAL -a AFTER  # Background process
```
