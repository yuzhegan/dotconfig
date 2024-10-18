# Defined in - @ line 1
# function c --description 'alias c clear'
# 	clear  $argv;
# end


function rms
    # 使用 PowerShell 终止 msrdc.exe 进程
    powershell.exe -Command "Stop-Process -Name msrdc -Force"

    # 暂停 2 秒
    sleep 2

    # 使用 PowerShell 重新启动 msrdc.exe
    powershell.exe -Command "& 'C:\\Program Files\\WSL\\msrdc.exe' /wslg /silent /v:383799BF-77FD-4CE0-95FD-4C61BD65E238 /hvsocketserviceid:2CD9FF24-FACB-11E6-BD58-64006A7986D3 /plugin:WSLDVC_PACKAGE /wslgsharedmemorypath:WSL\\383799BF-77FD-4CE0-95FD-4C61BD65E238\\wslg 'C:\\Program Files\\WSL\\wslg.rdp'"
end

