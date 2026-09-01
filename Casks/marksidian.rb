cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.15"
  sha256 arm:   "7d8dee6f733bc31a20e5fe795d6c635c828bdd7ef62801fdeed2ad8fd455e91f",
         intel: "078d41eb78051055e79e5f37f70006b606b4b740001bd823ec888e07160292b6"

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
