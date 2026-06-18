# Zig.Formatter ships with zigler, which is `optional: true, runtime: false` and
# is not compiled locally when the NIF is consumed prebuilt (force_build off, e.g.
# on macOS where a from-source build is broken). Guard on its availability so that
# `mix format` / `mix test` work locally; CI (where zigler compiles) still formats
# .zig via the plugin.
zig_formatter? = Code.ensure_loaded?(Zig.Formatter)

[
  inputs:
    ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"] ++
      if(zig_formatter?, do: ["{config,lib,test}/**/*.zig"], else: []),
  plugins: if(zig_formatter?, do: [Zig.Formatter], else: [])
]
