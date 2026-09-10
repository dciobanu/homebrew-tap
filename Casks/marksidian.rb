cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "346581d2274bf05d4b9b288d4df28ad5c0bda444d56a8d029257cd1187f5e788",
         intel: "adb3914636e234def4f1bd938099c6ad5d340f2d36b42bc9b481e89fe8f98170"

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
