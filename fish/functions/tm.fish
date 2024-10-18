# Defined in - @ line 1
function tm --description 'alias mt neomutt'
	ls -l ~/.config/tmux/fzf_panes.tmux
	chmod +x ~/.config/tmux/fzf_panes.tmux
	sudo mkdir -p /tmp/tmux-1000
	sudo chown $USER:$USER /tmp/tmux-1000

end
