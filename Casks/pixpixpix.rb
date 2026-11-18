cask "pixpixpix" do
  version "0.5.0"
  sha256 "fbf0b6833c09da5ed13c2e3154c4ce151198afca0b7c18f3b7c8d4c161cbcbae"

  url "https://github.com/paxel/pixpixpix/releases/download/v#{version}/pixpixpix-#{version}-macos-arm64-app.zip"
  name "pixpixpix"
  desc "Fast keyboard-first image and video viewer"
  homepage "https://github.com/paxel/pixpixpix"

  depends_on arch: :arm64
  # libmpv is bundled in the app; these two are loaded from Homebrew on first
  # need: libturbojpeg for lossless JPEG turns, libheif for HEIC/HEIF and AVIF.
  depends_on formula: ["jpeg-turbo", "libheif"]

  app "pixpixpix.app"
  binary "#{appdir}/pixpixpix.app/Contents/MacOS/pixpixpix"
  binary "#{appdir}/pixpixpix.app/Contents/MacOS/pix3"

  caveats <<~EOS
    pixpixpix is not signed with an Apple Developer certificate, so macOS
    blocks its first start. Allow it once in System Settings > Privacy &
    Security > "Open Anyway", or clear the quarantine of the app (this also
    covers the pixpixpix and pix3 commands):

      xattr -dr com.apple.quarantine #{appdir}/pixpixpix.app

    The app bundles libmpv, which makes this build GPL licensed; see
    pixpixpix.app/Contents/Resources/THIRD-PARTY.txt.
  EOS
end
