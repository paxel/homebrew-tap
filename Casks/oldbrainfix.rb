cask "oldbrainfix" do
  version "0.1.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "fc6c0fd801dfcbe902ea2b7ef5e92cac3ad485f29a1f2682fc498c59b125be95",
         intel: "60b02e7bf203f111f7fff380513a61b11c7c2e9584b85b26b03d7ce1e3fe1e93"

  url "https://github.com/paxel/oldbrainfix/releases/download/v#{version}/oldbrainfix-#{version}-macos-#{arch}.dmg"
  name "Old Brain Fix"
  desc "Capture a thought in one tap, get nagged until it is sorted or done"
  homepage "https://github.com/paxel/oldbrainfix"

  app "Old Brain Fix.app"
  binary "#{appdir}/Old Brain Fix.app/Contents/MacOS/oldbrainfix"

  caveats <<~EOS
    The app is not signed with an Apple Developer certificate. On first
    launch macOS refuses it: open System Settings, Privacy & Security, and
    choose Open Anyway.
  EOS
end
