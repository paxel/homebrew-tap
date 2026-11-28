cask "oldbrainfix" do
  version "0.9.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "a3c338a410c81ac5adc4a648f4d7284e96e8e55522f6d362f0828d85c164c2fd",
         intel: "29527378cd61ceba373995b5fd0bdf23f81ae1e96490b18629f2342506c8e907"

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
