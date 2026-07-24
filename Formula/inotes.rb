# brew tap ml-lubich/tap && brew install inotes
class Inotes < Formula
  include Language::Python::Virtualenv

  desc "Apple Notes CLI — agent-friendly Typer tool (imsg family)"
  homepage "https://github.com/ml-lubich/inotes"
  url "https://files.pythonhosted.org/packages/df/b1/cda439cae70c4a282d659448a569afc58123789d91c69a39c7ccea9f88aa/mac_inotes-0.1.0.tar.gz"
  sha256 "aa3dc68376fe3be3200f8a43196be3f953d8940b8ff405df230661ee9cbe0346"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "mac-inotes==0.1.0"
    bin.install_symlink libexec/"bin/inotes"
  end

  test do
    assert_match "inotes", shell_output("#{bin}/inotes -h")
    assert_match "\"tool\"", shell_output("#{bin}/inotes agent schema")
  end
end
