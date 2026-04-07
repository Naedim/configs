-- Override jdtls to use the highest available Java version as the LSP runtime (jdtls 1.31+ requires Java 21+),
-- while the project itself can still target Java 11 via JAVA_HOME in the shell.
return {
  "mfussenegger/nvim-jdtls",
  opts = function(_, opts)
    -- Use java_home without version constraint so jdtls gets Java 21+
    local java_home = vim.fn.system("[ -x /usr/libexec/java_home ] && /usr/libexec/java_home || echo $JAVA_HOME"):gsub("%s+$", "")
    local java_bin = java_home .. "/bin/java"
    if vim.fn.executable(java_bin) == 1 then
      table.insert(opts.cmd, 2, "--java-executable=" .. java_bin)
    end
    return opts
  end,
}
