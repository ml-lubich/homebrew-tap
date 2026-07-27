# brew tap ml-lubich/tap && brew install vgate
# PyPI package vercel-mcp (pure-python wheel + sdist). Keeps brew in sync with PyPI.
class Vgate < Formula
  include Language::Python::Virtualenv

  desc "Switch between multiple Vercel CLI logins — CLI + MCP server"
  homepage "https://github.com/ml-lubich/vercel-mcp"
  url "https://files.pythonhosted.org/packages/48/fa/37def95e7d31e5e599e93922bea6a95651a8595e4be1ec252494e5537a87/vercel_mcp-0.1.0.tar.gz"
  sha256 "5589ec95e44f8f04a291503224bffe5a72bc497a8786957326f1690887950cbd"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "vercel-mcp==0.1.0"
    bin.install_symlink libexec/"bin/vgate"
    bin.install_symlink libexec/"bin/vgate-mcp"
  end

  test do
    assert_match "vgate", shell_output("#{bin}/vgate --version")
    assert_match "\"tool\"", shell_output("#{bin}/vgate agent schema")
  end
end
