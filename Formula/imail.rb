# brew tap ml-lubich/tap && brew install imail
class Imail < Formula
  include Language::Python::Virtualenv

  desc "Apple Mail.app CLI — agent-friendly Typer tool (imsg family)"
  homepage "https://github.com/ml-lubich/imail"
  url "https://files.pythonhosted.org/packages/8d/02/651264ebca1c50fb175115811ab38d5d74ad0fb95296571682514eab3f9a/mac_imail-0.1.1.tar.gz"
  sha256 "38172e1f4dcbb78a1474ea35582961d588cc3c0cd493ae871cb73ccbfe0791e4"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "mac-imail==0.1.1"
    bin.install_symlink libexec/"bin/imail"
  end

  test do
    assert_match "imail", shell_output("#{bin}/imail -h")
    assert_match "\"tool\"", shell_output("#{bin}/imail agent schema")
  end
end
