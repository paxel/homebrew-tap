cask "oldbrainfix" do
  version "0.5.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "37d1b9bae8a454c3842b92167aaafc4f778a6d9879cfb9a42e50e68eb6be1671",
         intel: "62c41eef1f662921888b46aad921d5af1d0f1b218dc5607bb248ea7f44d103c3"

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
