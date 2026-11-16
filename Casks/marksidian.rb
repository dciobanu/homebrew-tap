cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.11.2"
  sha256 arm:   "3b9c098b8a9a0c5eb291601ec7452dcd6c42ebc28947b5f8e40a4cfdb777ac97",
         intel: "8586dcca2f7721954ea65b02d6eae4499f8e869e916796c54b2fc01ad3e132e2"

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
