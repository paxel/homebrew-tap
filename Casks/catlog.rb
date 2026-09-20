cask "catlog" do
  version "2.0.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "2ed1cfc73a89ea2c3d62ad279cafde3e3d89e90cf0ff850a9de57f607b7217af",
         intel: "50acf1d1b7e76be64bdd16d6ab686e6f7fd448ea63a7aa68e4d5e55e980585de"

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
