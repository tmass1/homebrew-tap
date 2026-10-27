cask "bellhop" do
  version "0.1.4"
  sha256 "74a8354df43c4bfbd46572054bc21d1273844d4fb3e61fa6750751b247b8e202"

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
