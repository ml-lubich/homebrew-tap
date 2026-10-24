# Install with: brew install ical-mcp
# PyPI package ical-mcp. Command on PATH is `ical`.
class IcalMcp < Formula
  include Language::Python::Virtualenv

  desc "macOS Calendar.app CLI and MCP server"
  homepage "https://pypi.org/project/ical-mcp/"
  url "https://files.pythonhosted.org/packages/df/0c/2807e59d0a5d4988011c6ff6161820e5e9a201d805b8ea570848314c857b/ical_mcp-0.2.3.tar.gz"
  sha256 "021a634fde46a7522c23922de6985f6a144dac53d295de23bc8e4342d0f55ec7"
  license "MIT"

  depends_on :macos
  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12").pip_install buildpath
    bin.install_symlink libexec/"bin/ical"
    bin.install_symlink libexec/"bin/ical-mcp"
  end

  test do
    assert_match "ical", shell_output("#{bin}/ical -h")
    assert_match "calendar", shell_output("#{bin}/ical agent schema")
    assert_predicate bin/"ical-mcp", :exist?
  end
end
