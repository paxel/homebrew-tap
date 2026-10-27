cask "oldbrainfix" do
  version "0.1.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "d618a70f5350c7baa969e326fdeaf62a617db7f02de5eb2ee7cfb01ece1234d8",
         intel: "fdd61d72f6590525ec52ac8b27e2b77bb40f3e2fcc5ae729dcd71f8581fe092d"

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
