cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.23"
  sha256 arm:   "e649d99c68f012ddfa6efa44a8ca6531ed6a5f47f2a071fee5b5b1b4de70c4e6",
         intel: "784149187922b4f8b3f90ed95f526c58dd3d5d68a14b6fe00781e4cc1f10df1a"

  url "https://github.com/dciobanu/marksidian-releases/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian-releases"

  depends_on macos: :monterey

  app "Marksidian.app"

  zap trash: [
    "~/Library/Application Support/Marksidian",
    "~/Library/Preferences/com.marksidian.editor.plist",
    "~/Library/Saved Application State/com.marksidian.editor.savedState",
  ]
end
