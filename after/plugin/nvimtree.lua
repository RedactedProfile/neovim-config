local nvim_tree = require "nvim-tree"
nvim_tree.setup {
    -- disables netrw completely
    disable_netrw = false,
    -- hijack netrw window on startup
    hijack_netrw = false,
    -- open the tree when running this setup function
    open_on_setup = false,
    -- will not open on setup if the filetype is in this list
    ignore_ft_on_setup = {},
    -- closes neovim automatically when the tree is the last **WINDOW** in the view
    --auto_close = true,
    -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
    open_on_tab = true,
    --nvim_tree_indent_markers = 1,
    -- hijacks new directory buffers when they are opened.
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    hijack_directories = {
        -- enable the feature
        enable = true,
        -- allow to open the tree if it was previously closed
        auto_open = true
    },
    -- hijack the cursor in the tree to put it at the start of the filename
    hijack_cursor = false,
    -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
    update_cwd = true,
    -- show lsp diagnostics in the signcolumn
    --lsp_diagnostics = true,
    -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
    renderer = {
        add_trailing = true,
        highlight_git = true,
        highlight_opened_files = "all"
    },
    update_focused_file = {
        -- enables the feature
        enable = true,
        -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
        -- only relevant when `update_focused_file.enable` is true
        update_cwd = true,
        -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
        -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
        ignore_list = {".git", "node_modules", ".cache"}
    },
    -- configuration options for the system open command (`s` in the tree by default)
    system_open = {
        -- the command to run this, leaving nil should work in most cases
        cmd = nil,
        -- the command arguments as a list
        args = {}
    },
    actions = {open_file = {resize_window = true}},
    view = {
        -- width of the window, can be either a number (columns) or a string in `%`
        width = 35,
        -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
        side = "left",
        mappings = {
            -- custom only false will merge the list with the default mappings
            -- if true, it will only use your list to set the mappings
            custom_only = false,
            -- list of mappings to set on the tree manually
            list = {}
        }
    },
    filters = {
        dotfiles = true
    }
}
