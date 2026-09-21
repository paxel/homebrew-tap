cask "catlog" do
  version "2.0.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "06e0facbeedd62a015b7ce1164da84167d19c96a7241e8ca054c487a955ff8c9",
         intel: "3f6a40ad8866785238d921a2e62793d5b146a7263780e3472f097336933bd53f"

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
