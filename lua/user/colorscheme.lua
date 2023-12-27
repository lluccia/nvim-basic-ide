require("tokyonight").setup({
  on_colors = function(colors)
    colors.border = "#565f89"
  end
})

local colorscheme = "tokyonight-night"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

