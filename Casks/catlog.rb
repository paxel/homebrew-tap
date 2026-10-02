cask "catlog" do
  version "2.2.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "b8d4d7ec3721be03909049787f1b06a434ac0bb8f24ddb38cc6d033eb84fdec4",
         intel: "da768267df3de15ca56b90d0a7b5796acf88b3518b0cc79362535d4c29aa4663"

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
