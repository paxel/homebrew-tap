# Homebrew formula for the paxel/tap tap, rendered by the release workflow:
# it fills in the tagged version and the sha256 of each release tarball and
# pushes the result to paxel/homebrew-tap as Formula/claude-here.rb.
# Binary formula: it installs the prebuilt claude_here and claude_yolo.
class ClaudeHere < Formula
  desc "Run Claude Code in a project-scoped Docker sandbox with enforced git modes"
  homepage "https://github.com/paxel/claude-here"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.6.1/claude_here-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "c867df93b0c96e659c2079734f93c5f7e7c79f958e4c357e8beceecd05bf901a"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.6.1/claude_here-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "e0f0e5da37495cf6e8670a70aa40f7f029759d01ea7676d9a42c035c1b4ee0b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.6.1/claude_here-v0.6.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "67622fac368a92b84d2a6bf3d820c109548a31af5e468a5292d77049091f0fd7"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.6.1/claude_here-v0.6.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64bdb3e01457eb245df791fd517e387c67023d13eb421281ab6ca789986745c7"
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
