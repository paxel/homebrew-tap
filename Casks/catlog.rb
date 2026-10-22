cask "catlog" do
  version "2.5.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "f5d10579d48e22cab6d87abcf410776ed9cefd2bf9a9ee6e80a71083fae03300",
         intel: "b45d68116f0b2e22f8122b37e2280e9cb8cea6b654968b344f8d58b362ad77d2"

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
