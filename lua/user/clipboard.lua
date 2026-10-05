-- clipboard provider that strips Windows line endings (\r) on paste
if vim.fn.has("wsl") == 1 then
  local paste
  if vim.env.DISPLAY and vim.fn.executable("xclip") == 1 then
    paste = { "sh", "-c", "xclip -selection clipboard -o | tr -d '\\r'" }
    vim.g.clipboard = {
      name = "xclip-nocr",
      copy = { ["+"] = { "xclip", "-selection", "clipboard" }, ["*"] = { "xclip", "-selection", "clipboard" } },
      paste = { ["+"] = paste, ["*"] = paste },
      cache_enabled = 0,
    }
  else
    paste = { "sh", "-c", "powershell.exe -NoProfile -Command Get-Clipboard | tr -d '\\r'" }
    vim.g.clipboard = {
      name = "wsl-clip-nocr",
      copy = { ["+"] = { "clip.exe" }, ["*"] = { "clip.exe" } },
      paste = { ["+"] = paste, ["*"] = paste },
      cache_enabled = 0,
    }
  end
end
