class Catlog < Formula
  desc "Local-first catalog for foster cats - no server, no account"
  homepage "https://github.com/paxel/catlog"
  version "0.1.3"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on :linux

  on_arm do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-arm64.tar.gz"
    sha256 "49308d01181e9db8cccbd9ee17c08167f563c93823179f04a7d853febc56f22c"
  end
  on_intel do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-x86_64.tar.gz"
    sha256 "9b5e190da1135fbd3d3542219e56c9b8609ba701daae9a25762a4749a684ceff"
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
