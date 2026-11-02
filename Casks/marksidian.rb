cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "c7ee3ae663aefb55742dc4a943240b65f22592e944e2e6022556be49172cd575",
         intel: "91b7b0098f2009121171a88af9b599dd219ea468ebdf0e33faa6791618a45db4"

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
