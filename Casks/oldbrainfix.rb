cask "oldbrainfix" do
  version "0.3.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "91f0f88c5242d48a101dcdef75707a6498a7dd7533eac58522b112852b044710",
         intel: "7cf4f8389b3b70f3c54e9e565058ab45c3128a393646b73db27fb58bf4e0a342"

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
