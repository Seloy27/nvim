
--
-- GLOBAL
-- Removes view file of current buffer directory "stdpath("state")/view/"
--

function RemoveView()

	local file = vim.api.nvim_buf_get_name(0)
	local currentBufName	= string.gsub(file, "/(%w+)/(%w+)(%p)(%w+)", "", 1)
	local viewPath	= vim.fn.stdpath("state").."/view/"
	local viewFile	= function()
		local p1	=	string.gsub(currentBufName, "^%p", "~/", 1)
		return string.gsub(p1, "/", "=+").."="
	end

	os.remove(viewPath..viewFile())
	print(viewPath..viewFile())
end

