class Catlog < Formula
  desc "Local-first catalog for foster cats - no server, no account"
  homepage "https://github.com/paxel/catlog"
  version "0.1.4"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on :linux

  on_arm do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-arm64.tar.gz"
    sha256 "17a04c6af050a3880b086e86acce635494f7b3151ccc9e14bd85e06795d8a715"
  end
  on_intel do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-x86_64.tar.gz"
    sha256 "9fdabeaee94e637712ac7459caa0197b414d0ad7b07c3c867d9a02bebcf38c39"
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
