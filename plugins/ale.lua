vim.g.ale_linters = {
  go = { "golangci-lint", "revive" }
}
vim.g.ale_go_golangci_lint_package = 1
vim.g.ale_go_golangci_lint_options = ''

return {
  {
    "dense-analysis/ale",
    event = "BufEnter,"
  },
}
