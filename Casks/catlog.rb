cask "catlog" do
  version "0.3.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "9219bf5af9a438babba6cf4b8e49f9546d38819168f5834e55ef26e14a55035f",
         intel: "317b0bc2ed2055bfb0beaae362ee6abd4ded4b38633f2a576e29188dbf09e508"

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
