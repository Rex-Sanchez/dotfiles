vim.api.nvim_create_augroup("ScrollFocus", { clear = true })
vim.api.nvim_create_autocmd("FocusGained", {
    group = "ScrollFocus",
    pattern = "*",
    callback = function()
        if vim.wo.scrollbind then
            vim.cmd("wincmd w")
        end
    end,
})
vim.api.nvim_create_autocmd("CursorMoved", {
    group = "ScrollFocus",
    pattern = "*",
    callback = function()
        if vim.wo.scrollbind then
            vim.cmd("wincmd w")
        end
    end,
})
