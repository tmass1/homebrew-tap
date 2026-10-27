cask "bellhop" do
  version "0.1.3"
  sha256 "51a331431e9e0cd8cb4b456fb6b2dd326186d9660f714fff613a08e01862b08d"

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
