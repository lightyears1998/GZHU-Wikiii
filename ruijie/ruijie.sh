#!/usr/bin/bash

while :
do
	timeout=3
	target=www.baidu.com
	if curl -I -s --connect-timeout $timeout $target | grep Keep-Alive; then
		echo "success"
	else
		echo "failed & try to connecting ..."
        pid=`ps -aux | grep rjsupplicant.sh | grep -v grep | grep -o -w "^[0-9]*" | head -n 1`
        if test -z "$pid"; then                                                                                                                              
~/Documents/CMOS-AO
            echo "empty"
            screen /usr/bin/bash /usr/bin/rjsupplicant/rjsupplicant.sh -d 1 -u <id> -p <password>
        else
            echo "Killing the rjsupplicant pid=$pid ..."
            kill -KILL $pid
        fi

    fi
	sleep 1
done

