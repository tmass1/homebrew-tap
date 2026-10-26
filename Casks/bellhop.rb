cask "bellhop" do
  version "0.1.2"
  sha256 "1b6f5a3f461a31719375af4f84245f1525b9fd1fc8eb7250accaca05cea101b3"

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
