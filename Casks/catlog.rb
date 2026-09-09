cask "catlog" do
  version "1.2.3"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "25a2f09fad8417baeba65b499c5f998bcb8df946cf5db6ef5feb64d6bbe65c22",
         intel: "76ae38fb0b902ece69ac4706767da17e2160336f4a9427e779d7ef2fd646d5b8"

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
