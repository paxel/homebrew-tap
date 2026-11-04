cask "oldbrainfix" do
  version "0.4.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "c2e711363ece50963ee2478f992e49ecf085a3fef48d7836bf97350340b5d3f7",
         intel: "7df4d3e7d1c2e11b6628953b347203ab5c096deb6b36573065cc20dc6c1f7f69"

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
