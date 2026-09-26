cask "catlog" do
  version "2.0.5"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "cc028e967acfcca22f401e69ac99476bdee4975ff24feb52b1af4000f811864e",
         intel: "9159c6d5b78b350e9931951e085b06fc0abddcdbb8fba119e52927049421df57"

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
