# Defined via `source`
function vi --wraps='chmod u+x nvim.appimage && ./nvim.appimage' --wraps=vim --wraps='cd ~ && chmod u+x nvim.appimage && ./nvim.appimage' --wraps=nvim --description 'alias vi nvim'
  nvim $argv; 
end
