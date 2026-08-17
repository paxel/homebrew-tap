class Catlog < Formula
  desc "Local-first catalog for foster cats - no server, no account"
  homepage "https://github.com/paxel/catlog"
  version "0.1.1"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on :linux

  on_arm do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-arm64.tar.gz"
    sha256 "d6ac67aaecaf074ba42d4c63c35631e1325f11b22948841f276a113c3aa85bf1"
  end
  on_intel do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-x86_64.tar.gz"
    sha256 "ec94846cf81a348d968221557b0349f3eff212679e6b936467b61c7852bcb737"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"catlog"
  end

  def caveats
    <<~EOS
      Needs the GTK 3 runtime from your distribution
      (e.g. Debian/Ubuntu: sudo apt install libgtk-3-0).
    EOS
  end

  test do
    assert_predicate libexec/"catlog", :exist?
  end
end
