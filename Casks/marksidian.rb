cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.24"
  sha256 arm:   "dbd5059f2856e73f72a9787bccddd5bcbfcb7d659d582feba1c8314aed1c9e0a",
         intel: "9c2fc60c394ed3e1631b2504f47a5fe16bc55475cd34789a3983983fe914f958"

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
