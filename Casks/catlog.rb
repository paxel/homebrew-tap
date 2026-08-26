cask "catlog" do
  version "1.0.2"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "fc7655ba94272a13965f52df4650a01f83442d68ab22a538d00c05226b75d3eb",
         intel: "22352be9e445e6fb5c3df5336f4cf5abf4e5a3ea0401db1edeb6e6511b37ef23"

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
