cask "catlog" do
  version "0.1.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "99891df77462ed9dd4aa1a357b80412b07bcb4e812aa3110375f18ea6ee02773",
         intel: "b96f41102195dd16174cfde5b613b35095c009418c06f4caba879c406b43f7bc"

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
