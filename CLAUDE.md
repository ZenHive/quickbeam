# QuickBEAM

JavaScript-Runtime für die BEAM: führt JS/npm-Pakete und async Code in Elixir-GenServers via Zig-NIFs aus (WAMR/WASM-Backend). Mix-Projekt (`:quickbeam`), Elixir + Zig + TypeScript (`priv/ts/`).

- Check-Command: `mix ci` (compile --warnings-as-errors, format, credo --strict, dialyzer, ex_dna, zlint, oxlint, jscpd, test).
- Roadmap: `roadmap/tasks.toml` (rmap-managed, kanonisch; rendert `ROADMAP.md`).

## Harness (Delegations-Engine)

Dieses Repo treibt harness aus Context A (`.mcp.json` wired auf `localhost:4018`). Maßgebliche Treiber-Anleitung:

@~/_DATA/code/harness/skills/harness-driver/SKILL.md
