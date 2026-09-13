cask "catlog" do
  version "1.3.2"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "f8aad952ad0a241388baa4c30a6fc34f50fe22eb75505f361f3b089724891581",
         intel: "36fefdae5eaa7b5a6058ff2086848aec958fa71dca1fcf6d5de2be5bbe9a8c13"

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
