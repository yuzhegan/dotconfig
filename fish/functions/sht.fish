# Defined via `source`
function sht --wraps='shutdown how now' --wraps='shutdown -h now' --description 'alias sht shutdown -h now'
  shutdown -h now $argv; 
end
