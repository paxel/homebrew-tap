cask "catlog" do
  version "2.1.0"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "f530d2fb18263b340e164c7588af9054a225864dd09332a0f4b048ed3b1811d8",
         intel: "0640d8f591d0b3ed4cb39b3f339d8f258e2f80a589d10a7c175a81f9c9ff77a4"

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
