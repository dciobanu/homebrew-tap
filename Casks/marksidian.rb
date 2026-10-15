cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.25"
  sha256 arm:   "6150829254ec8d9c5cc39dc708808b8e0dced7de18e5d6a14c36fb50431648ec",
         intel: "d34ea24c59ebe788a7f8fa2b36fd9c047a4a0a023702c14fffbf069aaff2096e"

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
