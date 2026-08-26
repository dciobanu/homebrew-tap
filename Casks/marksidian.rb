cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.13"
  sha256 arm:   "de483b706ee9b6f0fe6a9dc38f3196dbcb8d569eda90d785d881225156d91979",
         intel: "7eadeb34991df3b4fbe95680dc6b9263ff3f962230135d793c3fc0078b387067"

  url "https://github.com/dciobanu/marksidian-releases/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian-releases"

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
