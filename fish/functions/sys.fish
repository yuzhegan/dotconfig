# Defined via `source`
function sys --wraps='systemctl suspend' --description 'alias sys systemctl suspend'
  systemctl suspend $argv; 
end
