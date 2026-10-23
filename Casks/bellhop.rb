cask "bellhop" do
  version "0.1.1"
  sha256 "8e028686f18e137c2742923a9f8481c82e48eab539cfd34b3ecfae4fd181ef57"

  url "https://github.com/tmass1/bellhop/releases/download/v#{version}/Bellhop.zip"
  name "Bellhop"
  desc "Condense the menu bar and run any of its items from the keyboard"
  homepage "https://bellhop.pages.dev"

  auto_updates true
  depends_on macos: :sonoma

  app "Bellhop.app"
  binary "#{appdir}/Bellhop.app/Contents/Helpers/bellhop"

  zap trash: [
    "~/Library/Application Support/Bellhop",
    "~/Library/Preferences/com.tommymassaro.bellhop.plist",
  ]
end
