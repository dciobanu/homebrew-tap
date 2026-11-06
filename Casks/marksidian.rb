cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "771b29694983d4904a5e320cb01e8954abee3463881795fdd038099d4c7e0447",
         intel: "5401fc41310d244c7f8c7ba40dd40b80aade25fec15348d06f52f9d92d9f3f6c"

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
