class ClaudeProjects < Formula
  desc "Terminal picker for jumping between projects and Claude Code sessions"
  homepage "https://github.com/snowbeluga/claude-projects"
  url "https://github.com/snowbeluga/claude-projects/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "09c2b2148c5f21a2d58d17db8f9deba29c287c9033bf5f244ad232c417f01fd9"
  license "MIT"
  head "https://github.com/snowbeluga/claude-projects.git", branch: "main"

  depends_on "fzf"
  depends_on "jq"

  def install
    libexec.install "bin", "shell", "install.sh", "uninstall.sh", "README.md", "LICENSE"
    bin.install_symlink libexec/"bin/claude-projects"
  end

  def caveats
    <<~EOS
      One more step: hook claude-projects into your shell. This adds one line to
      ~/.zshrc and/or ~/.bashrc (a backup is made) and asks which folders to scan:

        claude-projects install-shell

      (Upgrading from a git install? Run #{opt_bin}/claude-projects install-shell
      this once. Your old ~/.local/bin link comes first on PATH, and install-shell removes it.)

      Then open a new terminal tab and run:  claude projects   (or: cproj)

      To remove the line again before `brew uninstall`:  claude-projects uninstall-shell
    EOS
  end

  test do
    assert_match "claude-projects #{version}", shell_output("#{bin}/claude-projects version")
    assert_match "ignore", shell_output("#{bin}/claude-projects help")
  end
end
