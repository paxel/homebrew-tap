# Homebrew formula for the paxel/tap tap, rendered by the release workflow:
# it fills in the tagged version and the sha256 of each release tarball and
# pushes the result to paxel/homebrew-tap as Formula/claude-here.rb.
# Binary formula: it installs the prebuilt claude_here and claude_yolo.
class ClaudeHere < Formula
  desc "Run Claude Code in a project-scoped Docker sandbox with enforced git modes"
  homepage "https://github.com/paxel/claude-here"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.2/claude_here-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "58e13d55b22c04335a65d3924e1b6d9ac26c71e693c76c9297d18a33b49f862d"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.2/claude_here-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "79c458e941acafb55b2181101f3ab1902c5af667f667a84652ca592f15510ab8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.2/claude_here-v0.4.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b35a435e53cb23a95bc7e603e4fdce9bbf2c9de25f706570263252228c84cbaf"
    end
    on_intel do
      url "https://github.com/paxel/claude-here/releases/download/v0.4.2/claude_here-v0.4.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60f92668accd5ad2583f6400ac7fea580917af2dc8dc6b2377f8a2921db75548"
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
