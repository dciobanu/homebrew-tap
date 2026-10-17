cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.26"
  sha256 arm:   "99eddbb96182288455ef12b4956d3d83d68ebbc06fe1ae42c5ed3d72b2ac54d2",
         intel: "2bb12d5a15dc882b0db5ba6385ac559d2120ba399c818f04df0181fa486517e1"

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
