class Catlog < Formula
  desc "Local-first catalog for foster cats - no server, no account"
  homepage "https://github.com/paxel/catlog"
  version "0.2.1"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on :linux

  on_arm do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-arm64.tar.gz"
    sha256 "5438cc50ce65e9fb37f0a7a0644c0e57a03a47108c65a5aad9a3a120a0153509"
  end
  on_intel do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-x86_64.tar.gz"
    sha256 "13efa4fad91d3693892fe9267bde620acdd2fb5bfc47f1b6cc1d0b53aa2d91cd"
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
