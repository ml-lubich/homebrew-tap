# ml-lubich/homebrew-tap

Homebrew tap for [@ml-lubich](https://github.com/ml-lubich)'s command-line tools.

## How do I install these formulae?

```bash
brew install ml-lubich/tap/<formula>
```

Or `brew tap ml-lubich/tap` and then `brew install <formula>`. In a `brew bundle` `Brewfile`:

```ruby
tap "ml-lubich/tap"
brew "pdfify-md"
brew "confluence-cli"
```

## Formulae

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

## Notes

Both tools are also on npm (`pdfify-md`, `ml-lubich/confluence-cli`). They are Node.js tools, so there is no `pip`/PyPI distribution.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
