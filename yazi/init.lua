require("yaziline"):setup {
	separator_style = "curvy",
	select_symbol = "",
	yank_symbol = "󰆐",
	filename_max_length = 24, -- trim when filename > 24
	filename_trim_length = 6 -- trim 6 chars from both ends
}
require("starship"):setup {
	config_file = "~/.config/yazi/starship.toml",
}
require("git"):setup {}

Status:children_add(function()
	local h = cx.active.current.hovered
	if h == nil or ya.target_family() ~= "unix" then
		return ui.Line {}
	end

	return ui.Line {
		ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
		ui.Span(":"),
		ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"),
		ui.Span(" "),
	}
end, 500, Status.RIGHT)

-- require("yamb"):setup {
-- 	cli = "fzf",
-- }
-- You can configure your bookmarks by lua language
local bookmarks = {}

local path_sep = package.config:sub(1, 1)
local home_path = ya.target_family() == "windows" and os.getenv("USERPROFILE") or os.getenv("HOME")
if ya.target_family() == "windows" then
	table.insert(bookmarks, {
		tag = "Scoop Local",

		path = (os.getenv("SCOOP") or home_path .. "\\scoop") .. "\\",
		key = "p"
	})
	table.insert(bookmarks, {
		tag = "Scoop Global",
		path = (os.getenv("SCOOP_GLOBAL") or "C:\\ProgramData\\scoop") .. "\\",
		key = "P"
	})
end
table.insert(bookmarks, {
	tag = "Desktop",
	path = home_path .. path_sep .. "Desktop" .. path_sep,
	key = "d"
})

require("yamb"):setup {
	-- Optional, the path ending with path seperator represents folder.
	bookmarks = bookmarks,
	-- Optional, recieve notification everytime you jump.
	jump_notify = true,
	-- Optional, the cli of fzf.
	cli = "fzf",
	-- Optional, a string used for randomly generating keys, where the preceding characters have higher priority.
	keys = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
	-- Optional, the path of bookmarks
	path = (ya.target_family() == "windows" and os.getenv("APPDATA") .. "\\yazi\\config\\bookmark") or
			(os.getenv("HOME") .. "/.config/yazi/bookmark"),
}

-- ~/.config/yazi/init.lua
require("bookmarks"):setup({
	save_last_directory = false, -- DEPRECATED - will be removed in the future. Use `last_directory`
	last_directory = { enable = false, persist = false },
	persist = "none",
	desc_format = "full",
	file_pick_mode = "hover",
	notify = {
		enable = false,
		timeout = 1,
		message = {
			new = "New bookmark '<key>' -> '<folder>'",
			delete = "Deleted bookmark in '<key>'",
			delete_all = "Deleted all bookmarks",
		},
	},
})
