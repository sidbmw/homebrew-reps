class RepsMcp < Formula
  desc "Local, encrypted Reps Health MCP companion for Claude, Claude Code and Codex"
  homepage "https://github.com/sidbmw/homebrew-reps"
  url "https://github.com/sidbmw/homebrew-reps/releases/download/reps-mcp-v1.0.0/reps-mcp-1.0.0-universal.tar.gz"
  sha256 "d31209a5f1067f8c52e18eb8a5c35dd682b24d6d05e637f8ccc2228a2c4689fb"
  license :cannot_represent

  depends_on macos: :tahoe

  def install
    bin.install "reps-mcp"
    doc.install "SETUP.md"
  end

  def caveats
    <<~EOS
      Connect an assistant (each command is safe to run again):
        reps-mcp install-claude-desktop   # Claude Desktop
        reps-mcp install-claude           # Claude Code
        reps-mcp install-codex            # Codex
      Then open http://127.0.0.1:8787 and pair from Reps on your iPhone.
      Remove everything with: reps-mcp uninstall
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reps-mcp --version")
    assert_match "reps_today", shell_output("#{bin}/reps-mcp schema export")
  end
end
