-- Override jdtls to use Corretto 25 as the LSP runtime (jdtls 1.31+ requires Java 21+),
-- while the project itself can still target Java 11.
return {
  "mfussenegger/nvim-jdtls",
  opts = function(_, opts)
    local java25 = "/Library/Java/JavaVirtualMachines/amazon-corretto-25.jdk/Contents/Home/bin/java"
    table.insert(opts.cmd, 2, "--java-executable=" .. java25)
    return opts
  end,
}
