cask "catlog" do
  version "1.1.4"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "ecd5582b9886dd4838e351082896f2430d4b577b9d2daa1b1aad84327abff6ce",
         intel: "ce59af9f6af8bc3be436d9883a72de63c041f56e7ec847a4cfd988119b11141c"

  url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-macos-#{arch}.dmg"
  name "cat(a)log"
  desc "Local-first catalog for foster cats — no server, no account"
  homepage "https://github.com/paxel/catlog"

  app "catlog.app"

  caveats <<~EOS
    The app is not signed with an Apple Developer certificate. On first
    launch, right-click the app and choose Open.
  EOS
end
