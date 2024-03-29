set -x hostip (cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
function hp
	 alias ALL_PROXY="export ALL_PROXY=http://$hostip:10809" 
	 #alias ALL_PROXY="export ALL_PROXY=http://$hostip:7890" 
	 # alias ALL_PROXY="export ALL_PROXY=http://$hostip:20171" 
	 ALL_PROXY
end

