# brew tap ml-lubich/tap && brew install imsg
# PyPI package mac-imsg (arm64 wheel + sdist). Keeps brew in sync with PyPI.
class Imsg < Formula
  include Language::Python::Virtualenv

  desc "Fast, local iMessage CLI + MCP server (macOS only)"
  homepage "https://github.com/ml-lubich/imsg"
  url "https://files.pythonhosted.org/packages/a2/3c/9ba81dbb63f8dbb020034a240728e30396b00c8bb346a1903144ca3ffcf8/mac_imsg-0.1.2.tar.gz"
  sha256 "6d4841777719dbe7b3368de1db956e0a59aaa7e4f5f01e1b25166c177ddac4d0"
  license "MIT"

  depends_on "rust" => :build
  depends_on "openssl@3"
  depends_on "python@3.12"

  def install
    ENV["OPENSSL_DIR"] = Formula["openssl@3"].opt_prefix.to_s
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "mac-imsg==0.1.2"
    bin.install_symlink libexec/"bin/imsg"
    bin.install_symlink libexec/"bin/imsg-mcp"
  end

  test do
    assert_match "imsg", shell_output("#{bin}/imsg -h")
    assert_match "\"tool\"", shell_output("#{bin}/imsg agent schema")
  end
end
