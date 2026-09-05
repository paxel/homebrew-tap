cask "catlog" do
  version "1.1.2"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "428f076f09cd374d2bba4faae4c645968007d52c984345fe427b7f473d6b5a81",
         intel: "1652d79aa3aca178931b55417ccf4454b8b07938f86cc0bb8a823aa6658a5613"

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
