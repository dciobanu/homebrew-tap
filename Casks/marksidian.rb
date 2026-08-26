cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.11"
  sha256 arm:   "2168bfc287b5ef012a99b4f2b5061cdbef43c74eb35f8ad6842142f4824b9e48",
         intel: "12f63a5ce9e5aff6d28724b1d3362aa073f4d4a9a760f30b2608be741fcac277"

  url "https://github.com/dciobanu/marksidian/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian"

  depends_on macos: :monterey

  app "Marksidian.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Marksidian.app"]
  end

  zap trash: [
    "~/Library/Application Support/Marksidian",
    "~/Library/Preferences/com.marksidian.editor.plist",
    "~/Library/Saved Application State/com.marksidian.editor.savedState",
  ]
end
