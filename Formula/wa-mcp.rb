# Install with: brew install wa-mcp
class WaMcp < Formula
  include Language::Python::Virtualenv

  desc "WhatsApp CLI (wa) + MCP (wa-mcp) — imsg-family Typer tools"
  homepage "https://pypi.org/project/wa-mcp/"
  url "https://files.pythonhosted.org/packages/e0/18/f1c2e505c2ca55639b267454206a3be5abe6a55313e1d9cbeb375bae700e/wa_mcp-0.1.1.tar.gz"
  sha256 "4d9bccb9b8f55c68ba35e581477a63499d7f78e1a16b24568d1cc2b11c395bf2"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install buildpath
    venv.pip_install "mac-wa-mcp==0.1.0"
    bin.install_symlink libexec/"bin/wa"
    bin.install_symlink libexec/"bin/wa-mcp"
  end

  test do
    assert_match "wa", shell_output("#{bin}/wa -h")
    assert_match "\"tool\"", shell_output("#{bin}/wa agent schema")
  end
end
