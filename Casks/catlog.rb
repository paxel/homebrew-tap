cask "catlog" do
  version "1.0.3"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "8d93e855023b4e0f8d24b6c4ce0408e9fb7415722eed413927c4000244ca05b5",
         intel: "dd4b73d6202fb64fbb2fdd4ca351b13df038ae0a0fbe0fe10c1a235e3587690f"

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
