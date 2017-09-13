#!/usr/bin/bash

while :
do
        timeout=3
        target=www.baidu.com
        if curl -I -s --connect-timeout $timeout $target | grep Keep-Alive; then
                echo "连接网络成功"
        else
                echo "连接网络失败 & 尝试连接中……"
        pid=`ps -aux| grep rjsupplicant.sh | grep -v grep | grep -o -w "[0-9]*" | head -n 1`
        if test -z "$pid"; then
            echo "未检测到运行中的锐捷客户端"
            screen -dm /usr/bin/rjsupplicant/rjsupplicant.sh -d 1 -u <id> -p <password>
        else
            echo "正在终止工作异常的锐捷客户端 pid=$pid ……"
            kill -KILL $pid
        fi

    fi
        sleep 1
done
