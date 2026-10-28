# Homebrew formula for the paxel/tap tap, rendered by the release workflow:
# it fills in the tagged version and the sha256 of each release tarball and
# pushes the result to paxel/homebrew-tap as Formula/claude-here.rb.
# Binary formula: it installs the prebuilt claude_here and claude_yolo.
class ClaudeHere < Formula
  desc "Run Claude Code in a project-scoped Docker sandbox with enforced git modes"
  homepage "https://github.com/paxel/claude-here"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.1/claude_here-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "dc0a033435da9a565b56492c06d691fd1e3a26748b3c1399948559f89140f875"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.1/claude_here-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "a989e6f5439e05608aea06df537495d9fe05559ab72edb23c3f7dcfcee87c721"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.1/claude_here-v0.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "076a1cf43492c1e563c83cbc15134f69b3c199f4d9e3e04bd6f3ecf46d5cb606"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.1/claude_here-v0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7064b4756db88a85444388de81c6afdb69ad4e0dff2bfd501bf326ee4f51d0b6"
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
