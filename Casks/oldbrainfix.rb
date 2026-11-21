cask "oldbrainfix" do
  version "0.7.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "f5cff2527e81127c0e93e5205a6854a7d182a256e6e949313ca807b7b0dd3911",
         intel: "47d56374b84c9a4d4b67b4310c53a341912b1432be1ead2e3380668723147a06"

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
