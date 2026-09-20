cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.17"
  sha256 arm:   "0f5cf873d8ff1c8473d63b042fae2123438c26ed08db8278679991db5f321359",
         intel: "42b7fffd66846379766c2326f97e1cac65002f2ebc714f8895966af597fc272d"

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
