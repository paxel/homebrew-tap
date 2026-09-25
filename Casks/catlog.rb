cask "catlog" do
  version "2.0.4"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "4a2f9ee267dfb7114223440c791f879fea06a97e775e953bace410fb9b1f8aab",
         intel: "3f00dfbcbc9178ccbd411a4cc3836f17f6f2b1d9f829087d2dac6930d4ad4ee8"

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
