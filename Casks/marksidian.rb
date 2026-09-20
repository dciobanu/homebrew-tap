cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.16"
  sha256 arm:   "05fc06fb834beb03eb567af9dec28c5e95eeec2314acb42e95b0740ec8da532a",
         intel: "c4120d2e197fd570f5a5a46e040b8643e37df14661ebf2c219b0ffd70d5bfcc1"

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
