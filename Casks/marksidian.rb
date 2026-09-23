cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.18"
  sha256 arm:   "7b28a946f453750ec6bc8354606bc7e992e9a5e9d4d50f9ed7345ee96227307a",
         intel: "030c970c82bec9ec2d52222b71fe4b6e394ff88ff4db41c01aeda41e48c33c85"

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
