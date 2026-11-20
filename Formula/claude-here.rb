# Homebrew formula for the paxel/tap tap, rendered by the release workflow:
# it fills in the tagged version and the sha256 of each release tarball and
# pushes the result to paxel/homebrew-tap as Formula/claude-here.rb.
# Binary formula: it installs the prebuilt claude_here and claude_yolo.
class ClaudeHere < Formula
  desc "Run Claude Code in a project-scoped Docker sandbox with enforced git modes"
  homepage "https://github.com/paxel/claude-here"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.6.0/claude_here-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "88f41c77154fd6c68dd9e7d14640f704db32374c595a8118727d11cebf2e168c"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.6.0/claude_here-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "e35ee71485f1c99886807f21a51d1be93eb6275360f5b34b0a25669621adffd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.6.0/claude_here-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3204107bcb60a4da1e42d637e1092b7b1ae73e958633c132d06f7d1ca56d5f0a"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.6.0/claude_here-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50d194029b7edc6e27020dc7f786f6b44e4b103b9b51e204273f63d647c10435"
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
