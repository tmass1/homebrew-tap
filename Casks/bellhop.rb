cask "bellhop" do
  version "0.1.0"
  sha256 "0eacd988f7d25e9bf39eba979a660178101ea90392c5314477bdacf46c4030d4"

  url "https://github.com/tmass1/bellhop/releases/download/v#{version}/Bellhop.zip"
  name "Bellhop"
  desc "Condense the menu bar and run any of its items from the keyboard"
  homepage "https://bellhop.pages.dev"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Bellhop.app"
  binary "#{appdir}/Bellhop.app/Contents/Helpers/bellhop"

  zap trash: [
    "~/Library/Application Support/Bellhop",
    "~/Library/Preferences/com.tommymassaro.bellhop.plist",
  ]
end
