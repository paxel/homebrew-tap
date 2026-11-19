cask "oldbrainfix" do
  version "0.6.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "88146b16a49566b48a816e211d2f4189a041935626f829b96f331da45e4059f2",
         intel: "226705639c15fc9da729333fbdb8d1292db7693c583d647715f783588f85f71c"

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
