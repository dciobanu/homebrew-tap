cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "9d6d5f8269c4c4151229259661861971686b8d3e9241f650b734a4df57a69e49",
         intel: "b9f818c7805da18cda13f49cc295ba8477e5968b7e6b02431896247ed0614c3d"

  url "https://github.com/dciobanu/marksidian/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian"

  depends_on macos: ">= :monterey"

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
