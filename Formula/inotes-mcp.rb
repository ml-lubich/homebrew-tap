# Install with: brew install inotes-mcp
class InotesMcp < Formula
  include Language::Python::Virtualenv

  desc "Apple Notes CLI — agent-friendly Typer tool (imsg family)"
  homepage "https://pypi.org/project/inotes-mcp/"
  url "https://files.pythonhosted.org/packages/04/a5/e00b868a3ef4b3fc607772c68c94e758a241539ab3212b77380213ba4e3f/inotes_mcp-0.1.1.tar.gz"
  sha256 "80f66babf7f7befec8bab9d486936a3c2e2f2ffa5400cfec291e6c2220073643"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "inotes-mcp==0.1.1"
    bin.install_symlink libexec/"bin/inotes"
  end

  test do
    assert_match "inotes", shell_output("#{bin}/inotes -h")
    assert_match "\"tool\"", shell_output("#{bin}/inotes agent schema")
  end
end
