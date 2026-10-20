cask "catlog" do
  version "2.4.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "55936618ddb32ae221d984f3c6ceaf3d6f80c3c9a4ffa855f11cfbe714f21c75",
         intel: "688eb627b0822ae697891e72a24d0dcf36043d2ae867cf40ea827c100ce24b3b"

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
