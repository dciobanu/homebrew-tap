cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "be584cb4de00fa5963d5fa4bbb806cee17087027fd985e97f9da3d06709bfe61",
         intel: "91ea6db0ac764e2bfec5696f6fe0450f27e91d64efbe6a2aaa44285ada63f4f6"

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
