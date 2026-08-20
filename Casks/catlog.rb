cask "catlog" do
  version "0.2.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "b13bdb278fcf44ef5fabad10469e9b293d8eeee6bcfeead513b5689961e27946",
         intel: "dbf2b513e72f9bd86a8eed75da9fe237a973a31df46fcacd11ccb2b0642a7f2a"

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
