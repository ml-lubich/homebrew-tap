# brew tap ml-lubich/tap && brew install wa
class Wa < Formula
  include Language::Python::Virtualenv

  desc "WhatsApp CLI (wa) + MCP (wa-mcp) — imsg-family Typer tools"
  homepage "https://github.com/ml-lubich/whatsapp-mcp"
  url "https://files.pythonhosted.org/packages/97/40/b462cbad37612a5bb7f56b79ad420dfca118e5feb6ccffe2c831d6cd2de9/mac_wa-0.1.1.tar.gz"
  sha256 "454700d137c451757f0da393033b8799e472c4389c987586ff40669d71d17731"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "mac-wa==0.1.1", "mac-wa-mcp==0.1.0"
    bin.install_symlink libexec/"bin/wa"
    bin.install_symlink libexec/"bin/wa-mcp"
  end

  test do
    assert_match "wa", shell_output("#{bin}/wa -h")
    assert_match "\"tool\"", shell_output("#{bin}/wa agent schema")
  end
end
