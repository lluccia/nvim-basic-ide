if (vim.fn.executable("rg")) then
    vim.opt.grepprg = "rg --vimgrep --smart-case --hidden"
    vim.opt.grepformat = "%f:%l:%c:%m"
end
