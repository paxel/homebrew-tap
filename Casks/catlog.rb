cask "catlog" do
  version "1.0.7"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "8236b0d7dc1fc156b8444ac2783795ebe42ae3e7e0c7447b7622dc72f833e687",
         intel: "74238f11341c61098c3c67931c4c34582b8316163ea20cb498c4c1db63c7cb6e"

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
