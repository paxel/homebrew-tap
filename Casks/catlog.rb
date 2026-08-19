cask "catlog" do
  version "0.1.4"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "ddec80c401ea6a3efffc114d3828ff65bf7b0a73a3c5dfb8ff737524ac5b3712",
         intel: "4c3cd4f7c1aeabefed1b030298f54dd4b89ff5641e4da54b2f654089ea3d36ce"

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
