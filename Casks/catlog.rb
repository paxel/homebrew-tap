cask "catlog" do
  version "2.0.6"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "d56cc333199dad6c88f5bc9c8e03bc0dc738567559516913e58b26321e4bfb0e",
         intel: "81c299beb7ab00a8c7e476f0e437bd6f92a350a6ffaab238a77eb87fbe2c4c52"

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
