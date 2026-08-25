cask "catlog" do
  version "1.0.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "2b78630051f7d0b7b9e0ff8a502eee5791265d5045a588f5d75a23c399a38e4b",
         intel: "2d6556124b824154086ce7e27e9b304cab98fbdd690b00b3159f4665e70fd7ad"

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
