local M = {}


M.defaults = {
  i = {
    ["<C-s>"] = { "<esc>:w<cr>", "Save File" },
    ["<C-a>"] = { "<esc>ggVG", "Select all" },
  },
  n = {
    ["<C-a>"] = { "ggVG", "Select all" },
  }
}

-- Telescope keymaps
M.find = {
  n = {
    ["<leader>fF"] = { "<cmd>lua require('telescope.builtin').find_files({ no_ignore = true })<cr>", "All Files" },
    ["<leader>ff"] = { "<cmd> Telescope find_files <cr>", "Find Files" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep <cr>", "Live Grep" },
    ["<leader>fz"] = { "<cmd> Telescope current_buffer_fuzzy_find <cr>", "Current Buffer" },
    ["<leader>fb"] = { "<cmd> Telescope buffers <cr>", "Buffer" },
    -- Other
    ["<leader>fs"] = { "<cmd> Telescope colorscheme <cr>", "Colorscheme" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <cr>", "Help Tags" },
    ["<leader>fd"] = { "<cmd> Telescope diagnostics <cr>", "Diagnostics" },
    ["<leader>fc"] = { "<cmd> Telescope commands <cr>", "Commands" },
    ["<leader>fm"] = { "<cmd> Telescope man_pages <cr>", "Man Pages" },
    ["<leader>fk"] = { "<cmd> Telescope keymaps <cr>", "Keymaps" },
    ["<leader>fe"] = { "<cmd> Telescope symbols <cr>", "Emoji" },

    -- git stuff
    ["<leader>fgs"] = { "<cmd> Telescope git_status <cr>", "Git Status" },
    ["<leader>fgb"] = { "<cmd> Telescope git_branches <cr>", "Git Branches" },
    ["<leader>fgc"] = { "<cmd> Telescope git_commits <cr>", "Git Commits" },
    ["<leader>fgC"] = { "<cmd> Telescope git_bcommits <cr>", "Git File Commits" },
    ["<leader>fgf"] = { "<cmd> Telescope git_files <cr>", "Git Files" },
  }
}

-- buffer operations
M.buffer = {
  n = {
    -- cycle
    ["<leader>bn"] = { "<cmd>BufferLineCycleNext<cr>", "Next" },
    ["<leader>bp"] = { "<cmd>BufferLineCyclePrev<cr>", "Prev" },
    -- close
    ["<leader>bh"] = { "<cmd>BufferLineCloseLeft<cr>", "Close Left" },
    ["<leader>bl"] = { "<cmd>BufferLineCloseRight<cr>", "Close Right" },
    ["<leader>bo"] = { "<cmd>BufferLineCloseLeft<cr><cmd>BufferLineCloseRight<cr>", "Close Other" },
    ["<leader>bc"] = { "<cmd>BufferLineCloseLeft<cr><cmd>BufferLineCloseRight<cr><cmd>BufferLineCloseRight<cr>", "Close All" },
    -- sorting
    ["<leader>bd"] = { "<cmd>BufferLineSortByDirectory<cr>", "Sort by Directory" },
    ["<leader>be"] = { "<cmd>BufferLineSortByExtension<cr>", "Sort by Extension" },
    -- pinning
    ["<leader>bt"] = { "<cmd>BufferLineTogglePin<cr>", "Toggle pin buffer" },
  }
}

-- Quick toggles
M.toggle = {
  n = {
    --  terminal
    ["<leader>th"] = { "<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal term" },
    ["<leader>tv"] = { "<cmd>ToggleTerm direction=vertical<cr>", "Vertical term" },
    ["<leader>tf"] = { "<cmd>ToggleTerm direction=float<cr>", "Floating term" },

    --trouble
    ["<leader>tt"] = { "<cmd>TroubleToggle<cr>", "Toggle Trouble" },
    ["<leader>tw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics" },
    ["<leader>td"] = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics" },
    ["<leader>tq"] = { "<cmd>TroubleToggle quickfix<cr>", "Quickfix" },
    ["<leader>tr"] = { "<cmd>TroubleToggle lsp_references<cr>", "LSP References" },
  }
}

-- Package management stuff
M.package_manager = {
  n = {
    -- Lazy
    ["<leader>pl"] = { "<cmd>Lazy<cr>", "Lazy plugin manager" },
    ["<leader>pc"] = { "<cmd>Lazy clean<cr>", "Clean unused plugins" },
    ["<leader>pu"] = { "<cmd>Lazy update<cr>", "Update plugins" },
    ["<leader>pa"] = { "<cmd>Lazy load all<cr>", "Load all plugins" },
    ["<leader>pi"] = { "<cmd>Lazy install all<cr>", "Install all plugins" },

    -- Mason
    ["<leader>pm"] = { "<cmd>Mason<cr>", "Mason" },
  }
}

-- Git helpers
M.git = {
  n = {
    -- diff view
    ["<leader>gd"] = { "<cmd>DiffviewOpen<cr>", "Diffview Open" },
    ["<leader>gc"] = { "<cmd>DiffviewClose<cr>", "Diffview Close" },
    ["<leader>gr"] = { "<cmd>DiffviewRefresh<cr>", "Diffview Refresh" },
    ["<leader>gh"] = { "<cmd>DiffviewFileHistory<cr>", "Diffview File History" },
    ["<leader>gg"] = { "<cmd>LazyGit<cr>", "LazyGit" },
  }
}


-- diagnostics
M.diagnostics = {
  n = {
    ["<leader>dn"] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next Diagnostic" },
    ["<leader>dp"] = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
    ["<leader>df"] = { "<cmd>lua vim.diagnostic.open_float()<cr>", "Float Diagnostic" },
  }
}

return M
