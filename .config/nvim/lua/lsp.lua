local lspconfig = require('lspconfig')

-- LSP Diagnostic Icons
local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " "
}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

-- OmniSharp
local pid = vim.fn.getpid()
local omnisharp_bin = "/home/joey/.local/share/nvim/mason/packages/omnisharp/OmniSharp.dll"
lspconfig.omnisharp.setup{
    cmd = {"dotnet", omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}

-- Bash Lsp
require'lspconfig'.bashls.setup{}

