cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "e85ce1b0a6d01b80a4670f4e53e0c5e9adca52a514b6313c4b17d322255ffe63",
         intel: "a91e5bd80dcc9fa848566d0a8af76f91eec97638643b1fc74d28322bea6df4fc"

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
