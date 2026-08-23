cask "catlog" do
  version "0.3.2"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "f76c3d5b34239125b0a910bd33990dc3f3de64343b10e85e83b4d270141180de",
         intel: "a829709fa9565b0d54b92425ebf82037aa5958b7f8ca76e29061df799da11660"

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
