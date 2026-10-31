cask "oldbrainfix" do
  version "0.2.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "b90f9ee212c50b879b6b34778c4f1027ac60a42b097c184e77fbb75db68e49d6",
         intel: "b689fd513773c47443db75e8d80b25e756e32177e3bb0ab7f32d9471593bad05"

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
