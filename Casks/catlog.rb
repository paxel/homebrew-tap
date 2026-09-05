cask "catlog" do
  version "1.1.3"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "447c8a5594c44c148abb3ba6b202a48c36208f9926eee675387c450e3db37af1",
         intel: "fc1693e219fe8e97b30b943595608d150363d75db08a703338414853969f171a"

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
