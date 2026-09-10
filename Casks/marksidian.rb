cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.6"
  sha256 arm:   "bfd0f93bbc2f6ce4957d410f711dca55706d7743a3f98467c14e1ba6a5dbbc13",
         intel: "12696f73c26a6bc65bf247dacf6abcf0671c81b7fb8affa6a9ece63e1211d67e"

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
