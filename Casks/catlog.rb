cask "catlog" do
  version "1.3.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "2b8b66ba5df8ad9590ecdbd09ab18038f59ee919125a8ed8b8808715428911d6",
         intel: "182c54d252d4ec55ac6da721c6d6220bc0a14258a049235c595df67ddb386a09"

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
