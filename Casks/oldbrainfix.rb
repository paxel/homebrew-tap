cask "oldbrainfix" do
  version "0.3.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "13b69b5cb552a6ca1720b7f370377853a4b7b15e0fdb18e77b8a818018fd7612",
         intel: "07bc076817f3fbab47834991af5d9dd2ffaad65de88a30652d4a7f00fa736f7e"

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
