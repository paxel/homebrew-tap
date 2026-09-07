cask "catlog" do
  version "1.2.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "8bb5e73fd9313885180b7f9c44b46ac8641fea46baae43f4415d38b9781de9bd",
         intel: "47cea60f7ab14129638a9d49e50e3c6f885990701d6bd7e56eda2d06f550926f"

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
