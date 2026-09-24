# brew tap ml-lubich/tap && brew install ical
# PyPI package mac-ical. Command on PATH is `ical`.
class Ical < Formula
  include Language::Python::Virtualenv

  desc "macOS Calendar.app CLI and MCP server"
  homepage "https://github.com/ml-lubich/ical"
  url "https://files.pythonhosted.org/packages/da/47/8f8ee47bf2b0b8de55c8da145d9f83fd8365d86f44c36d1b088734116a7a/mac_ical-0.2.1.tar.gz"
  sha256 "39f444603a81fe3e1f0c80ab2834df70d129d750c7d30bf83ed8edd7f67c4a80"
  license "MIT"

  depends_on :macos
  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "mac-ical==0.2.1"
    bin.install_symlink libexec/"bin/ical"
  end

  test do
    assert_match "ical", shell_output("#{bin}/ical -h")
    assert_match "calendars", shell_output("#{bin}/ical agent schema")
  end
end
