# ml-lubich/homebrew-tap

Homebrew tap for [@ml-lubich](https://github.com/ml-lubich)'s command-line tools.

## How do I install these formulae?

```bash
brew install ml-lubich/tap/<formula>
```

Or `brew tap ml-lubich/tap` and then `brew install <formula>`. In a `brew bundle` `Brewfile`:

```ruby
tap "ml-lubich/tap"
brew "imsg"
brew "imail"
brew "inotes"
brew "wa"
brew "pdfify-md"
brew "confluence-cli"
brew "bitbucket-client"
brew "vgate"
brew "ical"
brew "jenkins-mcp"
brew "twig"
```

## Formulae

### imsg / imail / inotes / wa (agent CLI family)

Typer CLIs with `-h` / `--help` and `agent schema`. PyPI: `mac-imsg`, `mac-imail`, `mac-inotes`, `mac-wa` (+ `mac-wa-mcp`).

```bash
brew install ml-lubich/tap/imsg
brew install ml-lubich/tap/imail
brew install ml-lubich/tap/inotes
brew install ml-lubich/tap/wa
imsg agent schema
imail -h
```

### pdfify-md

Convert Markdown files to PDFs, with Mermaid diagram support.

```bash
brew install ml-lubich/tap/pdfify-md
pdfify-md document.md
```

The formula bundles a matching Chrome for Testing, so Puppeteer works out of the box — no manual browser install. macOS / Apple Silicon.

Source: https://github.com/ml-lubich/pdfify-md

### confluence-cli

Confluence CLI with first-class bulk operations — `bulk move`, `bulk delete`, and idempotent `mirror` (local Markdown tree → Confluence) — plus folder-aware, cross-space moves. Built to be safely driven by AI agents (dry-run by default, structured errors, `--json`).

```bash
brew install ml-lubich/tap/confluence-cli
confluence init            # one-time auth setup
confluence bulk move --help
```

Source: https://github.com/ml-lubich/confluence-cli

### bitbucket-client

Lightweight `gh`-style CLI for Bitbucket Cloud and Data Center, including a read-only MCP server.

```bash
brew install ml-lubich/tap/bitbucket-client
bb --version
```

Source: https://github.com/ml-lubich/bitbucket-cli

### vgate

Switch between multiple Vercel CLI logins. PyPI: `vercel-mcp`.

```bash
brew install ml-lubich/tap/vgate
vgate ls
```

Source: https://github.com/ml-lubich/vercel-mcp

### ical

macOS Calendar.app CLI and MCP server. PyPI: `mac-ical` (command is `ical`).

```bash
brew install ml-lubich/tap/ical
ical calendars
```

Source: https://github.com/ml-lubich/ical

### jenkins-mcp

Jenkins CLI and MCP server. PyPI: `jenkins-mcp-cli`.

```bash
brew install ml-lubich/tap/jenkins-mcp
jenkins-mcp -h
```

Source: https://github.com/ml-lubich/jenkins-mcp

### twig

Git worktree CLI. PyPI: `twig-cli`. The formula builds the Rust extension, so a Rust compiler is required at install time.

```bash
brew install ml-lubich/tap/twig
twig --help
```

Source: https://github.com/ml-lubich/twig

## Notes

The Node.js tools are also on npm (`pdfify-md`, `@ml-lubich/confluence-cli`).
Python tools are also on PyPI: `mac-imsg`, `mac-imail`, `mac-inotes`, `mac-wa`, `bitbucket-client`, `vercel-mcp`, `mac-ical`, `jenkins-mcp-cli`, `twig-cli`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
