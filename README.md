# ml-lubich/homebrew-tap

Homebrew tap for command-line and MCP tools.

## How do I install these formulae?

```bash
brew install <formula>
```

After adding this tap, install any formula by name:

```ruby
brew "wa-mcp"
brew "pdfify-md"
brew "confluence-cli"
brew "bitbucket-client"
brew "vercel-mcp"
brew "jenkins-mcp"
brew "twig"
brew "pyosascript"
```

The installed command names are unchanged for the remaining formulae.

## Formulae

### wa-mcp

WhatsApp CLI and MCP bridge. The WhatsApp MCP entry point is also published as `mac-wa-mcp`.

```bash
brew install wa-mcp
wa --help
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
Python tools are also on PyPI: `wa-mcp`, `mac-wa-mcp`, `bitbucket-client`, `vercel-mcp`, `jenkins-mcp-cli`, `twig-cli`, `pyosascript`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
