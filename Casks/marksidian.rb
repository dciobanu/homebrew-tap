cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "ec96c2c3c4aef41af761e1ade5fdb8ebc03b453d4f16812b99a00c5741da1059",
         intel: "832f2e66f4841a22e8a741824fff8ff2a61a04b0cc8fa0b0e9aa8b47ab12f2c6"

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
