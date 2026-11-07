cask "oldbrainfix" do
  version "0.5.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "d3d73c530c81cba08814b233d4c7c42da57488a9983fa947bacf2e021f08e9e1",
         intel: "bc0dfe7b60933c4b703710e6da6e86034ae2fa8715bc6897054f8d115102a745"

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
