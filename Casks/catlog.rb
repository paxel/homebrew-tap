cask "catlog" do
  version "1.0.6"

  arch arm: "arm64", intel: "x86_64"
  sha256 arm:   "febefddbe79729dcab96ea2b269d260400b10d1609f009b46e2feb134aa75411",
         intel: "bb54ed1453f8568d58537327df98a711a5b21a4f6cf9fc489694909d2b44900c"

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
