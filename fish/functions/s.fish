# Defined in - @ line 1
function s --description 'alias s neofetch'
  echo "1" | genie -c sudo systemctl start cronie.service  $argv;
end
