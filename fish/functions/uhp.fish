set -x hostip (cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
function uhp
	 alias ALL_PROXY="export ALL_PROXY=http://$hostip:20171" 
	 set -e ALL_PROXY
end
