cask "oldbrainfix" do
  version "0.6.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "4b0449404acefb4268b20c81c18efac51d1da448c16bd75c0ac2b153e68386ad",
         intel: "5dd601675f2725eb2e2aef9350f2b2472937377b5454c58a25fe957789d0158b"

  url "https://github.com/paxel/oldbrainfix/releases/download/v#{version}/oldbrainfix-#{version}-macos-#{arch}.dmg"
  name "Old Brain Fix"
  desc "Capture a thought in seconds, get nagged until it is sorted or done"
  homepage "https://github.com/paxel/oldbrainfix"

  app "Old Brain Fix.app"
  binary "#{appdir}/Old Brain Fix.app/Contents/MacOS/oldbrainfix"

  caveats <<~EOS
    The app is not signed with an Apple Developer certificate. On first
    launch macOS refuses it: open System Settings, Privacy & Security, and
    choose Open Anyway.
  EOS
end
