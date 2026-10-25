cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "1602f7800bd06b92a7f356439ce6b50b565478badeaec89a1f165ee24d0e9058",
         intel: "9fd6177676f14623aa091679b71d9760efac73e25f587b4a02e8dcd488cb23d4"

  url "https://github.com/dciobanu/marksidian-releases/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian-releases"

  auto_updates true
  depends_on macos: :monterey

  app "Marksidian.app"

  zap trash: [
    "~/Library/Application Support/Marksidian",
    "~/Library/Preferences/com.marksidian.editor.plist",
    "~/Library/Saved Application State/com.marksidian.editor.savedState",
  ]
end
