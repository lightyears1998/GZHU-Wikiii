# 电信 VPN 免客户端连接教程
电信网是在校园网的基础上连接一个 **不使用 IPSec** 的 L2TP VPN. 电信只提供了 Windows 平台的客户端, 客户端的实际作用是计算真实密码以及禁止多网卡. 

VPN 服务器地址: `10.129.1.1` 用户名无需修改

密码计算: [telecom-password.html](telecom-password.html). 算出来的密码末尾有特殊字符.

## Windows
> 在 Windows XP, Windows 7 和 Windows 10 下测试成功.

先导入注册表 `DisableIPSec.reg` . 然后重启使其生效.
> 注意: 导入此注册表会关闭 VPN 的 IPSec 功能, 你将无法连接需要 IPSec 的 VPN, 除非再次开启.

新建一个 VPN, 服务器为 `10.129.1.1`, 类型选择 L2TP, 身份验证协议只选择 CHAP.

连接时用户名输入电信给的用户名, 密码输入算出来的密码, 因为密码中含有特殊字符, 只能通过复制粘贴输入.

## Linux
需要修改 xl2tpd 让其使用空 secret, [详细](https://github.com/GZHU-Dress/xl2tpd/commit/ce8f62464c20394ed1fe6b8319ebf3cbfa2c5aea).

## macOS
最新的 macOS 不能关闭 IPSec, 所以暂无办法连接. (也许第三方 VPN 可以?)
