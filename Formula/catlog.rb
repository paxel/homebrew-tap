class Catlog < Formula
  desc "Local-first catalog for foster cats - no server, no account"
  homepage "https://github.com/paxel/catlog"
  version "1.3.0"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on :linux

  on_arm do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-arm64.tar.gz"
    sha256 "ab551fec19800a455d4712f26c2fd72fa4e912b14e5f4eb71e96a6a827b28836"
  end
  on_intel do
    url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-linux-x86_64.tar.gz"
    sha256 "c14125977ef345723faadc718bc3d39b580024c692a19c8ffb6647b3f5550c81"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"catlog"

    # Absolute paths, not bare names. A desktop session does not read Homebrew's shell
    # environment, so neither its bin directory nor its icon theme directory is on the
    # session's PATH or XDG_DATA_DIRS: "Exec=catlog" would fail to launch and
    # "Icon=catlog" would find nothing to draw.
    icon = "#{opt_prefix}/share/icons/hicolor/scalable/apps/catlog.svg"
    inreplace libexec/"catlog.desktop" do |entry|
      entry.gsub! "Exec=catlog", "Exec=#{opt_bin}/catlog"
      entry.gsub! "Icon=catlog", "Icon=#{icon}"
    end

    # The helper and everything it copies live together, so it finds the icons next to
    # itself. A wrapper rather than a symlink, for the same reason.
    (libexec/"install-icon.sh").chmod 0755
    (bin/"catlog-install-icon").write <<~SH
      #!/bin/sh
      exec "#{opt_libexec}/install-icon.sh" "$@"
    SH
    (bin/"catlog-install-icon").chmod 0755

    # Also in Homebrew's own share, for the sessions that do read it.
    (share/"applications").mkpath
    cp libexec/"catlog.desktop", share/"applications/catlog.desktop"
    (share/"mime/packages").mkpath
    cp libexec/"catlog-mime.xml", share/"mime/packages/catlog-mime.xml"
    (share/"icons/hicolor/scalable/apps").mkpath
    cp libexec/"icon.svg", share/"icons/hicolor/scalable/apps/catlog.svg"
    (share/"icons/hicolor/1024x1024/apps").mkpath
    cp libexec/"icon.png", share/"icons/hicolor/1024x1024/apps/catlog.png"
  end

  def caveats
    <<~EOS
      Needs the GTK 3 runtime from your distribution
      (e.g. Debian/Ubuntu: sudo apt install libgtk-3-0).

      To get cat(a)log into your application menu, where it can also be pinned, and to
      open .catsync files with it, run once:

        catlog-install-icon

      That copies the launcher entry, the icons and the file type into ~/.local/share,
      which every desktop session reads. Homebrew's own share directory is not on a
      session's XDG_DATA_DIRS, so an entry installed there alone stays invisible to
      menus.
    EOS
  end

  test do
    assert_predicate libexec/"catlog", :exist?
  end
end
