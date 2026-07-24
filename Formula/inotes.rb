# brew tap ml-lubich/tap && brew install inotes
class Inotes < Formula
  include Language::Python::Virtualenv

  desc "Apple Notes CLI — agent-friendly Typer tool (imsg family)"
  homepage "https://github.com/ml-lubich/inotes"
  url "https://files.pythonhosted.org/packages/2e/aa/818880228d34cbbe131b1f9af8e7b390e8ab0405c5a5e2ddc2e7b5bd59dd/mac_inotes-0.1.1.tar.gz"
  sha256 "cbe9c52fa44bc6c6fd379db1b668ce26b1a2d4ca2c5c9135f19bea937a114cd5"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "mac-inotes==0.1.1"
    bin.install_symlink libexec/"bin/inotes"
  end

  test do
    assert_match "inotes", shell_output("#{bin}/inotes -h")
    assert_match "\"tool\"", shell_output("#{bin}/inotes agent schema")
  end
end
