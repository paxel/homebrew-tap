cask "catlog" do
  version "2.0.7"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "0bc7b6eab5754496f46aee893cb642713aac9ce15eabeb0539601ba6f586e245",
         intel: "645daabc6172bfc2530facd66fbc0c1692010dd1fc1c4e0020cc2f82cc3aa9fd"

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
