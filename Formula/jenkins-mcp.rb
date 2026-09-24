# brew tap ml-lubich/tap && brew install jenkins-mcp
# PyPI package jenkins-mcp-cli. Command on PATH is `jenkins-mcp`.
class JenkinsMcp < Formula
  include Language::Python::Virtualenv

  desc "Jenkins CLI and MCP server for jobs, builds, and console logs"
  homepage "https://github.com/ml-lubich/jenkins-mcp"
  url "https://files.pythonhosted.org/packages/3f/51/c63e2edae8be7cfaa1a43a4d98b94379bfd2c32e9b988ce388242152f1d0/jenkins_mcp_cli-0.3.0.tar.gz"
  sha256 "6cdbf4e105af497c620cfd6ef1d81ad4a3e2eaac8d18e90a1d57711c6b37d47f"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", "jenkins-mcp-cli==0.3.0"
    bin.install_symlink libexec/"bin/jenkins-mcp"
  end

  test do
    assert_match "Jenkins", shell_output("#{bin}/jenkins-mcp -h")
  end
end
