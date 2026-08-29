cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.14"
  sha256 arm:   "717094bb07685c2899a0c05ad522d8215a0c1bf3cb151cf595c82b84b333d850",
         intel: "9a25cc21c1200450d67d3449d124f1f2ef8a088acad7bb5445e6f8b7a923bbb3"

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
