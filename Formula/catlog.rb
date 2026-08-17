class Catlog < Formula
  desc "Local-first catalog for foster cats - no server, no account"
  homepage "https://github.com/paxel/catlog"
  version "0.1.2"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on :linux

  on_arm do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-arm64.tar.gz"
    sha256 "ad8ca0e4740c85ced5eef8c9feff0200e7aeab84b4be70abf8f3e3d5e16a4582"
  end
  on_intel do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-x86_64.tar.gz"
    sha256 "d122f94b9bded8c050ef9d6677986dab46a0c91b24fc3a4ab035c6932d254a3c"
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
