cask "catlog" do
  version "0.1.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "d992ee004ec2c45341ffe395582f998d18368a496f70d7686bf146db59339973",
         intel: "5294ab01bc6446d57e79cf3af5750dfcf8cba13e953a223ec98f1832705d8a2d"

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
