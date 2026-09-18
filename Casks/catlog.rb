cask "catlog" do
  version "1.4.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "6199451c7687cf585b628e6d0079e53e7038a9c876a7a83034ef6e360511f04d",
         intel: "2bcd9c8fc9ea12cde6d818f02a889a32ad4aa70b97adb986dacd6c580888b29e"

  url "https://github.com/paxel/catlog/releases/download/v#{version}/catlog-#{version}-macos-#{arch}.dmg"
  name "cat(a)log"
  desc "Local-first catalog for foster cats — no server, no account"
  homepage "https://github.com/paxel/catlog"

  app "catlog.app"

  caveats <<~EOS
    The app is not signed with an Apple Developer certificate. On first
    launch, right-click the app and choose Open.
  EOS
end
