cask "catlog" do
  version "0.3.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "41b52a13731708a872c22f40f0642429b234a5110138a3101c58f5b38cce0180",
         intel: "1d0342807668e3f0ef06817536ccb5e64549b4b4ca11b7c8c8ab8ea1a513fed3"

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
