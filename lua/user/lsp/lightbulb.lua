local status_ok, bulb = pcall(require, "nvim-lightbulb")
if not status_ok then
	return
end

bulb.setup({ autocmd = { enabled = true } })
