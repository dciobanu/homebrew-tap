cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "bf1a502e49ed75d773316bf3eaf5f06c3f7f87d0c10e70b8d9f47ac77aca4927",
         intel: "d9aa55cc71c8f0a0b1a4b8b516ec2d5a1081b741c1f6bdf452f1465ce372b339"

  url "https://github.com/dciobanu/marksidian-releases/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian-releases"

  depends_on macos: :monterey

  app "Marksidian.app"

  # Unsigned build: Gatekeeper would otherwise refuse to launch it.
  # Removed automatically once releases are Developer ID signed and notarized.
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
