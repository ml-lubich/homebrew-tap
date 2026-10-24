# Install with: brew install imsg-mcp
# PyPI package imsg-mcp. Keeps brew in sync with PyPI.
class ImsgMcp < Formula
  include Language::Python::Virtualenv

  desc "Fast, local iMessage CLI + MCP server (macOS only)"
  homepage "https://pypi.org/project/imsg-mcp/"
  url "https://files.pythonhosted.org/packages/ed/a8/3d534bd23739c42b00401b1c29ccbe9c9172c865210cbfe0c71a0dc75c7a/imsg_mcp-0.1.2.tar.gz"
  sha256 "6eacd06f6935a286db60e7350cc40be2555acc187a27e3adf287a49624b81d48"
  license "MIT"

  depends_on "rust" => :build
  depends_on "openssl@3"
  depends_on "python@3.12"

  def install
    ENV["OPENSSL_DIR"] = Formula["openssl@3"].opt_prefix.to_s
    virtualenv_create(libexec, "python3.12").pip_install "imsg-mcp==0.1.2"
    bin.install_symlink libexec/"bin/imsg"
    bin.install_symlink libexec/"bin/imsg-mcp"
  end

  test do
    assert_match "imsg", shell_output("#{bin}/imsg -h")
    assert_match "\"tool\"", shell_output("#{bin}/imsg agent schema")
  end
end
