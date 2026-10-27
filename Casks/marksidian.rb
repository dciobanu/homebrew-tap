cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "8d505f6cca69e4f1af39a8d697288f1f96d99889224f6aab0179be9f3581402e",
         intel: "c49e3f51ff65f83a32e38ea1b5c1ee0d0ff30d6f0f3a5c56e6c18a5ffd0bd0a0"

  url "https://github.com/dciobanu/marksidian-releases/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian-releases"

  auto_updates true
  depends_on macos: :ventura

  app "Marksidian.app"

  zap trash: [
    "~/Library/Application Support/Marksidian",
    "~/Library/Preferences/com.marksidian.editor.plist",
    "~/Library/Saved Application State/com.marksidian.editor.savedState",
  ]
end
