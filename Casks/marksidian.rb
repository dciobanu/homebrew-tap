cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "cf8048f208faffd4c7cf9625ee256a4d7003d7e5ee9cba7601b9c03b10272fc7",
         intel: "0ce107393a5aface17843ed137a2aafa043381c16236a951d4ddd2f5acd756bf"

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
