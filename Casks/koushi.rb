cask "koushi" do
  version "0.31.0"
  sha256 "25bd7a58eaaa4421af3e9ee489c6c08fcad4951cb45e489c1396d48b3e3a946e"

  url "https://github.com/shinaoka/koushi-matrix/releases/download/v#{version}/Koushi-macos-arm64.dmg"
  name "Koushi"
  desc "Matrix desktop client"
  homepage "https://shinaoka.github.io/koushi-matrix/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Koushi.app"

  uninstall quit: "chat.koushi.desktop"

  zap trash: [
    "~/Library/Application Support/koushi-desktop",
    "~/Library/Preferences/chat.koushi.desktop.plist",
    "~/Library/WebKit/chat.koushi.desktop",
  ]
end
