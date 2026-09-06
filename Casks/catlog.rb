cask "catlog" do
  version "1.2.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "aa51fa038d2c1f87a57fcb17a7ca3f92ce243d1a37ad2caffbd7f87046bd5609",
         intel: "dfb9996ab848ab982314ced57bdecf2d47652cc77374f28775d798882ff996af"

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
