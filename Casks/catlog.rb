cask "catlog" do
  version "2.0.3"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "6f74c9d04b32da9440121e450cc4c84442ca4f4f5201b4ed0a8172c7165a7002",
         intel: "2eefdb3284a6d67aa851d9de019119f57050faeae69e42bb975960b355e4226b"

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
