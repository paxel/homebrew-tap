cask "catlog" do
  version "1.0.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "b0f3a8840bdd08488b6dcd5f16de195768921586875ab9f0f8f9764c09823f48",
         intel: "ee9f75429773e22e042e2ecd5407e785a6206fefe8d2151179837e24ab318a59"

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
