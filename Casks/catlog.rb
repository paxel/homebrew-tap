cask "catlog" do
  version "2.4.1"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "e9eab1ac18815c55c4c049eba35498ef1048a64b437db60e8c70ef467dfa98e6",
         intel: "9807f9f43b9f48878725709c36adf8911eca0fe4acbaaf615958fb49dccd1176"

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
