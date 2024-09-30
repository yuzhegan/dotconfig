# Defined via `source`
function t --wraps=tmux --description 'alias t tmux'
	tmux new-session -c $PWD

  # tmux $argv; 
end
