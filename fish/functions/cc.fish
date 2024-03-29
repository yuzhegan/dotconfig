# Defined in - @ line 1
function cc --description 'alias c clear清理缓存'
  sudo su
	echo 3 > /proc/sys/vm/drop_caches
end
