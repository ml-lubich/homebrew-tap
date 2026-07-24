# brew tap ml-lubich/tap && brew install imail
class Imail < Formula
  include Language::Python::Virtualenv

  desc "Apple Mail.app CLI — agent-friendly Typer tool (imsg family)"
  homepage "https://github.com/ml-lubich/imail"
  url "https://files.pythonhosted.org/packages/d3/fe/888e105087b60affc281ac8a914d8aa363d4f95cf82e6983138305aa75d5/mac_imail-0.1.0.tar.gz"
  sha256 "051f750fbeb6604be9cfabe830b1283e88a7203dadae71823349b2cec64862bf"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "mac-imail==0.1.0"
    bin.install_symlink libexec/"bin/imail"
  end

  test do
    assert_match "imail", shell_output("#{bin}/imail -h")
    assert_match "\"tool\"", shell_output("#{bin}/imail agent schema")
  end
end
