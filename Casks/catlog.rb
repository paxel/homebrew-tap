cask "catlog" do
  version "2.0.2"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "11cf69aa0e3b3363c9bc0efba99a05700a62f89e46b4d38a5dad611480f471e7",
         intel: "6ed63b44118155e572b8e1a3dbb09f9ec93a0e13efe99b321d3e096a94a1d037"

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
