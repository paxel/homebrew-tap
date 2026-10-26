cask "oldbrainfix" do
  version "0.1.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "dd1e468993290dcccc986bf824f003b0f579b90809b310e529edc2017df43499",
         intel: "422ac36bf84673dce4187542ecebfdfc8992aa85694a3840f36d9063ca578c7f"

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
