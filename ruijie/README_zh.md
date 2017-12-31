# Linux操作系统简明指引

依赖项：“systemd” “screen”

- 以root权限创建目录 `/usr/bin/rjsupplicant`。
- 将`./official_pkg/*`移动到`/usr/bin/rjsupplicant`。
- 在`ruijie.sh`中将你的账户信息补充完整。
- 将`ruijie.sh`移动到`/usr/bin/rjsupplicant`并赋予可执行权限。
- 以`sudo systemctl start ruijie.service`启动服务。

锐捷官方客户端：

[Download（仅内网访问）](http://202.192.18.32:8081/Setup/RG_Supplicant_For_Linux_V1.31.zip)

md5: `2ef856e84f49180eeb733b181a3f0474`

如果你想通过无线路由中继网络，需要向你的路由器刷入OpenWRT或LEDE镜像。请查看以下页面：

派生自：

[agentx1](https://bitbucket.org/CrazyBoyFeng/agentx1)

其他选择：

[agentx1 for LEDE/OpenWRT](https://github.com/GZHU-Dress/agentx1-lede)

使用示例：

通过SSH登录你的无线路由器，然后根据路由器架构选择合适的中继客户端（如：`agentx1`），并上传至`/usr/bin/`。

```shell
agentx1 -L br-lan -W eth0.2 -p LOCAL -a AFTER
# 此时，你需要打开锐捷客户端完成入网身份认证。
opkg update
opkg install screen
screen agentx1 -L br-lan -W eth0.2 -p LOCAL -a AFTER  # 使脚本在后台持续运行
```

说明：

`rjsupplicant_multi_nic` 是可以使用多网卡的破解版本。
