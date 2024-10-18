# set -x hostip (cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
set -x hostip (ip route show | grep -i default | awk '{ print $3}')
function uhp
	 alias ALL_PROXY="export ALL_PROXY=http://$hostip:10809" 
	 set -e ALL_PROXY
end
