# Homebrew formula for the paxel/tap tap, rendered by the release workflow:
# it fills in the tagged version and the sha256 of each release tarball and
# pushes the result to paxel/homebrew-tap as Formula/claude-here.rb.
# Binary formula: it installs the prebuilt claude_here and claude_yolo.
class ClaudeHere < Formula
  desc "Run Claude Code in a project-scoped Docker sandbox with enforced git modes"
  homepage "https://github.com/paxel/claude-here"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.5.0/claude_here-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "bc58dd5df530ddf071255f0105ad993398909ba33f6acc9a768b8f298ccc31ef"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.5.0/claude_here-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "b612e5564c3ce20ca4ac6d355e6c12d673e8333b8e51a1c63e1661c3cd79f6c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.5.0/claude_here-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "adea0072558ec32b1054de64c78116a09e292f6822194dcb6ed1766b73da3fb9"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.5.0/claude_here-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c70eb3887c8f659e37e20fd8ad866eaa150cc052f2aedbe22b38dc120562db6"
    end
  end

  def install
    bin.install "claude_here", "claude_yolo"
    generate_completions_from_executable(bin/"claude_here", "completions")
  end

  def caveats
    <<~EOS
      Requires Docker. Run `claude_here init` once to obtain a Claude token
      and seed the container home.
    EOS
  end

  test do
    assert_match "claude_here", shell_output("#{bin}/claude_here --version")
  end
end
