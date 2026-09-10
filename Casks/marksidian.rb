cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.4"
  sha256 arm:   "81586c24d63fe52e666aa9cf54030ab0cdffca1040498761d5f8ac1c1dc3d511",
         intel: "5bb4de544220f9829ae4299e78250724919ec9e0aadeaf975d107883a79d7d92"

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
