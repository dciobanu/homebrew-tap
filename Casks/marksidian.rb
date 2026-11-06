cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "8ecf9a175205c5031bf7edb566a1ce75d6e5365d38e4810cd8d042652afe9215",
         intel: "d3db014ad479e35bfb5e3d3979f1d64fb523844614e1fce6c3a554d5e0d846ec"

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
