cask "catlog" do
  version "1.2.4"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "5db526c6265cb20cece1e7e576a01ebb0a91a302a0a2ac970fdb756e5b5b2776",
         intel: "f58a8036b9e6f256e6f8332117f4436a23f78ce67f5d3e75ab49bd00879cfb67"

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
