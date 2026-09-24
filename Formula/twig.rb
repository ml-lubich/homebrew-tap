# brew tap ml-lubich/tap && brew install twig
# PyPI package twig-cli (maturin/Rust extension). Command on PATH is `twig`.
class Twig < Formula
  include Language::Python::Virtualenv

  desc "Fast Git worktree CLI for humans and agent swarms"
  homepage "https://github.com/ml-lubich/twig"
  url "https://files.pythonhosted.org/packages/98/9a/0379b91fc933fa5543977129c4d7491a1b3396f6347e8f9feb969aca8808/twig_cli-0.2.0.tar.gz"
  sha256 "384d99663af837abce8192fc03c127d3777aee53668f08d876ffef85fc71f082"
  license "MIT"

  depends_on "python@3.12"
  depends_on "rust" => :build

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "twig-cli==0.2.0"
    bin.install_symlink libexec/"bin/twig"
  end

  test do
    assert_match "twig", shell_output("#{bin}/twig --help")
  end
end
