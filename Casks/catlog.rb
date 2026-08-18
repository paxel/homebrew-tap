cask "catlog" do
  version "0.1.3"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "245abd8b4c7a7c8687d05f9d267031033cccbd3bb410977addf87ca3c45f77f0",
         intel: "e146b54e3dc3ec216056f84d3aba74311725e0c00809898a32f4b47cd13ccdef"

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
