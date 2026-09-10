cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.8"
  sha256 arm:   "61c22fbd0f5ceedf142dc6a12920e3dbf1e2230b77d0d266f8cfc5b760cb270a",
         intel: "4d79f2dda40bc70c049fdcc008361696fa993b6b8e43fbad1f1241d71e9ff79d"

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
