cask "catlog" do
  version "1.0.5"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "9ff53850f8078af34816325eeff60491b6ea2fb848f6eb102f4da87cd31f175f",
         intel: "973ae086d49ea4e900fe913c8cbdae2471f258901713612cdf3d1a3b918ef1e8"

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
