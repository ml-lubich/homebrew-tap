# Install with: brew install vercel-mcp
# PyPI package vercel-mcp. Commands on PATH are `vgate` and `vgate-mcp`.
class VercelMcp < Formula
  include Language::Python::Virtualenv

  desc "Switch between multiple Vercel CLI logins — CLI + MCP server"
  homepage "https://pypi.org/project/vercel-mcp/"
  url "https://files.pythonhosted.org/packages/c0/9b/33a93ea10130c15231da960a82c31489a8dcac7d3f24f93a59e4abc2c40b/vercel_mcp-0.3.0.tar.gz"
  sha256 "16aac438d115fcad7f2e94a8d7689678ea4a192bf544c38d50dc42c51372f27e"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12").pip_install "vercel-mcp==0.3.0"
    bin.install_symlink libexec/"bin/vgate"
    bin.install_symlink libexec/"bin/vgate-mcp"
  end

  test do
    assert_match "vgate", shell_output("#{bin}/vgate --version")
    assert_match "\"tool\"", shell_output("#{bin}/vgate agent schema")
  end
end
