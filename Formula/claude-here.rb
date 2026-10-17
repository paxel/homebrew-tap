# Homebrew formula for the paxel/tap tap, rendered by the release workflow:
# it fills in the tagged version and the sha256 of each release tarball and
# pushes the result to paxel/homebrew-tap as Formula/claude-here.rb.
# Binary formula: it installs the prebuilt claude_here and claude_yolo.
class ClaudeHere < Formula
  desc "Run Claude Code in a project-scoped Docker sandbox with enforced git modes"
  homepage "https://github.com/paxel/claude-here"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.0/claude_here-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "ce004ab12271c049bf305fab38c563536ec6f462a6dc00836952a58a415c4305"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.0/claude_here-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "9d55baa3e0ae4ec709580ee4efb53643af3df2204bed0dac3dc157cee7c1c1ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.0/claude_here-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d5c6bd3ca21d4683281d6b80a8409d7cdd6896e9bbe295d02575b47f29af2b1a"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.0/claude_here-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0829fb0bea42cd8932053c1bdc71fb2c53c3fd65b6f1f6c082585e1471c576a0"
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
