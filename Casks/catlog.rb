cask "catlog" do
  version "0.2.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "a8ede49c286eefd0a1e2850ac6799f7157750d6322fd14ce1c2a205f35aa99a7",
         intel: "be5f172c4c17f813d3eb0bb70b88be1bd6b5b9dce918f203769bb058295cb02c"

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
