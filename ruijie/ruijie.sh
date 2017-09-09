#!/usr/bin/bash

while :
do
	timeout=3
	target=www.baidu.com
	if curl -I -s --connect-timeout $timeout $target | grep Keep-Alive; then
		echo "success"
	else
		echo "failed & try to connecting ..."
        pid=`ps -aux | grep rjsupplicant | grep -v grep | grep -o -w "^[0-9]*" | tail -n1`
        if test -z "$pid"; then                                                                                                                              
~/Documents/CMOS-AO
            echo "empty"
            /usr/bin/bash /usr/bin/rjsupplicant/rjsupplicant.sh -d 1 -u <id> -p <password>
        else
            echo "Killing the rjsupplicant pid=$pid ..."
            kill -KILL $pid
        fi

    fi
	sleep 3
done

