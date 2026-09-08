cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "59b97a6f6eb867881d6475ec133b04d8888b5ba3d600d21622ae79d6d6ed1d9b",
         intel: "6f41300a6e9d0cf9d800c351edc6d410fd319ef2b85c56c05ba881e9aa1d77e7"

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
