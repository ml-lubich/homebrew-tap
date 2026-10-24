# brew tap ml-lubich/tap && brew install pyosascript
class Pyosascript < Formula
  include Language::Python::Virtualenv

  desc "Type-safe Python bindings & CLI for macOS AppleScript and JXA"
  homepage "https://github.com/ml-lubich/pyosascript"
  url "https://files.pythonhosted.org/packages/8f/54/c08f7228d8ec50303147ec987c3580c04661da379e0f47729b5329f3b26b/pyosascript-0.1.0.tar.gz"
  sha256 "4684f4a44392f06a43b9cc1f080a152ef0bb0d81cbdafa5db31c79ee391cacae"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12").pip_install buildpath
    bin.install_symlink libexec/"bin/osascript-py"
  end

  test do
    assert_match "pyosascript", shell_output("#{bin}/osascript-py version")
    assert_match "4", shell_output("#{bin}/osascript-py eval 'return 2 + 2'")
  end
end
