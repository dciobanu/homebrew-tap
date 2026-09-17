cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.15"
  sha256 arm:   "1624fa752f83d75180600c1f89d456ea2cf9dbcebc22fa0c71f902df510668ed",
         intel: "927bc6d2d8ba2008136e51cdf2103d0af81f7a379523c30fe46265659501c5bd"

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
