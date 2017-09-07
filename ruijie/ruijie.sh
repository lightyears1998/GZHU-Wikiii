#!/usr/bin/bash
while :
do
	timeout=5
	target=www.baidu.com
	ret_code=`curl -I -s --connect-timeout $timeout $target | grep close`
	if curl -I -s --connect-timeout $timeout $target | grep close; then
		/usr/bin/bash /usr/bin/rjsupplicant/rjsupplicant.sh -d 1 -u <your id> -p <password>
	else
		echo "success"
	fi
	sleep 3
done
