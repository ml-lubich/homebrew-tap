# brew tap ml-lubich/tap && brew install wa
class Wa < Formula
  include Language::Python::Virtualenv

  desc "WhatsApp bridge CLI (wa) — agent-friendly Typer tool (imsg family)"
  homepage "https://github.com/ml-lubich/whatsapp-mcp"
  url "https://files.pythonhosted.org/packages/a2/be/3349c70811844d5dcbdaaac8e76390b5ad3e32c35975059707e96fc29e1a/mac_wa-0.1.0.tar.gz"
  sha256 "b375b1a16ebfa41889c49f0c00695c7fcee10d383fc78397355a526509b0f29c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "mac-wa==0.1.0"
    bin.install_symlink libexec/"bin/wa"
  end

  test do
    assert_match "wa", shell_output("#{bin}/wa -h")
    assert_match "\"tool\"", shell_output("#{bin}/wa agent schema")
  end
end
