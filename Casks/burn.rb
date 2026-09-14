cask "burn" do
  version "2.0.0"
  sha256 "637be3f9075a31aff66291521b4fbd075179c35076a3de7a60a1c8c0f9c8a331"

  url "https://github.com/tmass1/burn/releases/download/v#{version}/Burn.zip"
  name "Burn"
  desc "Menu-bar meter for AI plan limits: Claude, ChatGPT, Grok, Gemini, Cursor and Copilot"
  homepage "https://github.com/tmass1/burn"

  depends_on macos: ">= :sonoma"

  app "Burn.app"
  binary "#{appdir}/Burn.app/Contents/Resources/burn"

  zap trash: [
    "~/Library/Application Support/Burn",
    "~/Library/Preferences/com.tommymassaro.burn.plist",
  ]
end
