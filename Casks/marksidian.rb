cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "401d7067808d2a69ab6e8c06ce843baa1291f183708efdefa162bed632d401c2",
         intel: "9b90a6f4de377fbb386e507a2af38bde8495e17904237a7548d1fc27b4c38594"

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
