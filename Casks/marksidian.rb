cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "",
         intel: ""

  url "https://github.com/dciobanu/marksidian/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian"

  depends_on macos: ">= :monterey"

  app "Marksidian.app"

  zap trash: [
    "~/Library/Application Support/Marksidian",
    "~/Library/Preferences/com.marksidian.editor.plist",
    "~/Library/Saved Application State/com.marksidian.editor.savedState",
  ]
end
