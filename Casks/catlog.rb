cask "catlog" do
  version "1.3.4"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "31a3359356ab3db0b78266f569e527f6c6e5682e602310f82d8d1aad43a17f30",
         intel: "c611c5971bc748d8aba6ef81b7e186f3a2258c105c00125ca1f0c85f45705158"

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
