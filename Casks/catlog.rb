cask "catlog" do
  version "1.3.3"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "776adf96e7dc570aaf0609616a502348f7d8cb4588d759eadae19c8b704299c9",
         intel: "9934c8a99b999597069a573a9902ae42d7538a4cd9d660d07b1d1ff5e8142b68"

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
