cask "catlog" do
  version "1.3.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "875fa136a99850a25fbb7ebc0a0c59060fd0f68fc1379eb47e60738f73330cdf",
         intel: "4af3248983735f2838f1ef3c53b9fbf8376c4e572e7dd3441a7f78e6c9ea2f60"

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
