cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "aff23f8ee4aac27106077d3d18fad71fa23fef584656369687c00b271fb0fb2f",
         intel: "097e5488e1c5f0d39050e721cf1bf51d4816d13c4c02cf8f1d2f3bdfe3ff6906"

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
