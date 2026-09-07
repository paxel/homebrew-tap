cask "catlog" do
  version "1.2.2"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "0afcffcd706c9538c2e8c0875cdc9831a186297e1b03b96533c0ea829df3da98",
         intel: "c9bda28816c6965fbb0653a4b2e6518879a1e122ab357a1b577fd36b3ad612ac"

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
