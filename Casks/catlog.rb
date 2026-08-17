cask "catlog" do
  version "0.1.2"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "e5086d8a2a5ae66b65374c5db7728f3a5501d78affa8d62208a5618f68fcd433",
         intel: "328a8db3d1f40bc6f295075e9a3d9584cf85ccd9aad4ff1397020b4916a56010"

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
