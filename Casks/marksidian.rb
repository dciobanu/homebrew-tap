cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "81794563a1597718b9ab960101bde40d26e0e38b89dc5c900d95a10818e37e98",
         intel: "d7b6b8f6d36332ad14c0b57a5f203f456cb7a0493540834e2e639406445009f1"

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
