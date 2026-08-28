cask "catlog" do
  version "1.0.4"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "9579e19b32e6c566184d0294d1312d565bd8d7324d3826d51888355edca2462c",
         intel: "9477d0503307fc144f888e72aac5bcd2194357038095410175691ac6c0fb076b"

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
