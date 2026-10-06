cask "catlog" do
  version "2.3.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "34fa1204faaed8e165e9b233317b5a03dc26708b41b4dae1986185638933b686",
         intel: "de42907d9dfc80d0fa59457179c4fc98dadbd97a0094c090075816cbf2058b2b"

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
