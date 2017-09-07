#!/usr/bin/bash
function network()
{
	timeout=5
	target=www.baidu.com
	ret_code=`curl -I -s --connect-timeout $timeout $target -w %{http_code} | tail -n1`
	if [ "$ret_code" = "200" ]; then
		echo success
	else
		/usr/bin/rjsupplicant/rjsupplicant.sh -d 1 -u 1519400067 -p heyitonglaila4 
	fi
}
