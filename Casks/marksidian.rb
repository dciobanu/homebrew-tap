cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.10.1"
  sha256 arm:   "ec6d038d669a5b23943bdafdf80ed2c6d87113a2555d5ae0eb9486feefb666fb",
         intel: "a9991a6c9a0504dfaf239a1df7332ad6d5da9a871c0e60324a462ad237c294fe"

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
