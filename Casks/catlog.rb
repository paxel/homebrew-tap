cask "catlog" do
  version "1.1.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "1df9ec9791245f07c71f0323169ec9c78a5ec1b829615c7b1c9ffdf4d844c4ea",
         intel: "29269a4d3cc1c956e4d39d172e098315219d492e053a1c1d343dd6febfd2ce76"

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
