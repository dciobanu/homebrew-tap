cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.12"
  sha256 arm:   "d4d532b9c7c822cd1c23175fcb4f1047c177c8e22779a417187125b25c880450",
         intel: "0dd3c79646e7e438bd86e331b70fe9683d06351ee1fee0a833292a28a5a27e8f"

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
