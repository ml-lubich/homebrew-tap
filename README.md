# ml-lubich/homebrew-tap

Homebrew tap for command-line and MCP tools.

## How do I install these formulae?

```bash
brew install <formula>
```

After adding this tap, install any formula by name:

```ruby
brew "imsg-mcp"
brew "imail-mcp"
brew "inotes-mcp"
brew "wa-mcp"
brew "pdfify-md"
brew "confluence-cli"
brew "bitbucket-client"
brew "vercel-mcp"
brew "ical-mcp"
brew "jenkins-mcp"
brew "twig"
brew "pyosascript"
```

The old formula names (`ical`, `imail`, `imsg`, `inotes`, `wa`, and `vgate`) remain available as aliases. The installed command names stay `ical`/`ical-mcp`, `imail`, `imsg`/`imsg-mcp`, `inotes`, `wa`/`wa-mcp`, and `vgate`/`vgate-mcp`.

## Formulae

### imsg-mcp / imail-mcp / inotes-mcp / wa-mcp (agent CLI family)

Typer CLIs with `-h` / `--help` and `agent schema`. PyPI distributions: `imsg-mcp`, `imail-mcp`, `inotes-mcp`, and `wa-mcp`. The WhatsApp MCP entry point is still published as `mac-wa-mcp` until its distribution rename is released.

```bash
brew install imsg-mcp
brew install imail-mcp
brew install inotes-mcp
brew install wa-mcp
imsg agent schema
imail -h
```

### pdfify-md

Convert Markdown files to PDFs, with Mermaid diagram support.

```bash
brew install pdfify-md
pdfify-md document.md
```

The formula bundles a matching Chrome for Testing, so Puppeteer works out of the box — no manual browser install. macOS / Apple Silicon.


### confluence-cli

Confluence CLI with first-class bulk operations — `bulk move`, `bulk delete`, and idempotent `mirror` (local Markdown tree → Confluence) — plus folder-aware, cross-space moves. Built to be safely driven by AI agents (dry-run by default, structured errors, `--json`).

```bash
brew install confluence-cli
confluence init            # one-time auth setup
confluence bulk move --help
```


### bitbucket-client

Lightweight `gh`-style CLI for Bitbucket Cloud and Data Center, including a read-only MCP server.

```bash
brew install bitbucket-client
bb --version
```


### vercel-mcp

Switch between multiple Vercel CLI logins. PyPI: `vercel-mcp`.

```bash
brew install vercel-mcp
vgate ls
```


### ical-mcp

macOS Calendar.app CLI and MCP server. PyPI: `ical-mcp` (command is `ical`).

```bash
brew install ical-mcp
ical calendars
```


### jenkins-mcp

Jenkins CLI and MCP server. PyPI: `jenkins-mcp-cli`.

```bash
brew install jenkins-mcp
jenkins-mcp -h
```


### twig

Git worktree CLI. PyPI: `twig-cli`. The formula builds the Rust extension, so a Rust compiler is required at install time.

```bash
brew install twig
twig --help
```


## Notes

The Node.js tools are also on npm (`pdfify-md`, `@ml-lubich/confluence-cli`).
Python tools are also on PyPI: `imsg-mcp`, `imail-mcp`, `inotes-mcp`, `wa-mcp`, `mac-wa-mcp` (WhatsApp MCP entry point, pending rename), `bitbucket-client`, `vercel-mcp`, `ical-mcp`, `jenkins-mcp-cli`, `twig-cli`, `pyosascript`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
