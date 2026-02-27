
--
-- GLOBAL
-- Removes view file of current buffer directory "stdpath("state")/view/"
--
local file = vim.api.nvim_buf_get_name(0)

function RemoveView()

	local currentBufName	= string.gsub(file, "/(%w+)/(%w+)(%p)(%w+)", "", 1)
	local viewPath	= vim.fn.stdpath("state").."/view/"
	local viewFile	= function()
		local p1	=	string.gsub(currentBufName, "^%p", "~/")
		local res	=	string.gsub(p1, "/", "=+").."="
		return res
	end

	os.remove(viewPath..viewFile())

end

