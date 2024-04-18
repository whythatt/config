require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
table.insert(require("dap").configurations.python, {
	type = "python",
	request = "launch",
	name = "My custom launch configuration",
	program = "${file}",
	-- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
})

-- dap-ui mappings
require("dapui").setup()
vim.keymap.set("n", "<Leader>dr", function()
	require("dapui").open()
end)
vim.keymap.set("n", "<Leader>dc", function()
	require("dapui").close()
end)

-- dap mappings
local dap = require("dap")
dap.defaults.fallback.focus_terminal = true
vim.keymap.set("n", "<F5>", function()
	require("dap").continue()
end)
vim.keymap.set("n", "<F10>", function()
	require("dap").step_over()
end)
vim.keymap.set("n", "<F11>", function()
	require("dap").step_into()
end)
vim.keymap.set("n", "<F12>", function()
	require("dap").step_out()
end)
vim.keymap.set("n", "<Leader>b", function()
	require("dap").toggle_breakpoint()
end)
vim.keymap.set("n", "<Leader>B", function()
	require("dap").set_breakpoint()
end)
vim.keymap.set("n", "<Leader>lp", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
vim.keymap.set("n", "<Leader>dl", function()
	require("dap").run_last()
end)
