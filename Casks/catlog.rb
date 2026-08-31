cask "catlog" do
  version "1.1.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "768134c776c8f942dcede61af0ecadc3dac51bf5206f49f2c8cea31dbda7a43d",
         intel: "1c8ea0cab91089db626eac6019aa181a7453a998cbab54cfbb190fa4e255861f"

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
