cask "catlog" do
  version "0.3.3"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "a634e5768534db9e59f680503c7aaf50577b9932cd32fb2e80cbd03dd30afe05",
         intel: "3c381d19d21bb7efe4544ca9a4bd04e37b466cf1a499b998bebf5a627eb264ba"

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
