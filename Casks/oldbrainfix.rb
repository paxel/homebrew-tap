cask "oldbrainfix" do
  version "0.8.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "e21c96dc8abaf6cb568dcf6f48d0d742486e2b6e912bc28b39406aeb2151564f",
         intel: "c902d8eba62b6d122526c13b117c9df603cbc5e53d3b5e4b9ab687a9216960fc"

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
