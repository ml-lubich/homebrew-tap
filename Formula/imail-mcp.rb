# Install with: brew install imail-mcp
class ImailMcp < Formula
  include Language::Python::Virtualenv

  desc "Apple Mail.app CLI — agent-friendly Typer tool (imsg family)"
  homepage "https://pypi.org/project/imail-mcp/"
  url "https://files.pythonhosted.org/packages/54/6b/6c39cba9238e5a596f8133f9ceababe9007d51325ddc47b28132f9bbb7dd/imail_mcp-0.1.1.tar.gz"
  sha256 "4f62acd0cf2ec75df71e7e9fb8f39e40968dadfb0343407f60ff2a2d86eb64a4"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "imail-mcp==0.1.1"
    bin.install_symlink libexec/"bin/imail"
  end

  test do
    assert_match "imail", shell_output("#{bin}/imail -h")
    assert_match "\"tool\"", shell_output("#{bin}/imail agent schema")
  end
end
